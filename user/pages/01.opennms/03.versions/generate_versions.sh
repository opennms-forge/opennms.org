#!/bin/bash -e

# Script to generate OpenNMS Horizon Version Numbers
# set -x

CURL_BIN=$(which curl)
if [ ! $? -eq 0 ]; then
  echo "cURL is required and need to be installed."
  exit 1
fi

AWK_BIN=$(which awk)
if [ ! $? -eq 0 ]; then
  echo "awk is required and need to be installed."
  exit 1
fi

TAC_BIN=$(which tac)
if [ ! $? -eq 0 ]; then
  echo "tac is required and need to be installed."
  exit 1
fi

JQ_BIN=$(which jq)
if [ ! $? -eq 0 ]; then
  echo "jq is required and need to be installed."
  exit 1
fi

JIRA_REST_API_URL=https://issues.opennms.org/rest/api/2
JIRA_PROJECT=NMS
JIRA_NMS_VERSIONS=${JIRA_REST_API_URL}/project/${JIRA_PROJECT}/versions
AWK_FILE_HORIZON=horizon.awk
AWK_FILE_MERIDIAN=meridian.awk

TMP_HORIZON=/tmp/horizon_versions.tmp
TMP_MERIDIAN=/tmp/meridian_versions.tmp

OUTPUT_FILE=_versions/portfolio.md

# Get all released OpenNMS Horizon versions from JIRA, except the ones which have "Unknown Release" and "Meridian" in the name.
# Create a output data set for awk 
${CURL_BIN} -X GET \
        -H "Content-Type: application/json" ${JIRA_NMS_VERSIONS} | \
        ${JQ_BIN} -r '.[] | select(.description != null) | select(.released == true) | select(.name != "Unknown Release") | select(.name|test("Meridian-.*\\d$")|not) | .description, .name, .releaseDate, .userReleaseDate, .id' | \
        ${AWK_BIN} -v n=5 '1; NR % n == 0 {print ""}' | \
        ${AWK_BIN} -f ${AWK_FILE_HORIZON} > ${TMP_HORIZON}

# Stop here and don't change the file if we where unable to make the ReST call 
if [ ! $? -eq 0 ]; then
  echo "Couldn't not receiverelese version numbers via ReST: ${JIRA_NMS_VERSIONS}."
  exit 1
fi

# Get all released OpenNMS Meridian versions from JIRA
# Create a output data set for awk 
${CURL_BIN} -X GET \
        -H "Content-Type: application/json" ${JIRA_NMS_VERSIONS} | \
        ${JQ_BIN} -r '.[] | select(.description != null) | select(.released == true) | select(.name != "Unknown Release") | select(.name|test("Meridian-.*\\d$")) | .description, .name, .releaseDate, .userReleaseDate, .id' | \
        ${AWK_BIN} -v n=5 '1; NR % n == 0 {print ""}' | \
        ${AWK_BIN} -f ${AWK_FILE_MERIDIAN} > ${TMP_MERIDIAN}

# Stop here and don't change the file if we where unable to make the ReST call 
if [ ! $? -eq 0 ]; then
  echo "Couldn't not receiverelese version numbers via ReST: ${JIRA_NMS_VERSIONS}."
  exit 1
fi

#
# Generate Web content
#

echo "---
title: Version Comparison
---

_OpenNMS_ built is distributed in two releases _**Meridian**_ and _**Horizon**_.
Commercial support is provided by the _**Meridian**_ distribution which is targeting total cost of ownership running _OpenNMS_ in commercial supported environments.
_**Meridian**_ is based on selected major versions of _**Horizon**_.

# Horizon Versions
" > ${OUTPUT_FILE}

echo "| Release Description | Version | Release Date |" >> ${OUTPUT_FILE}
echo "|:--------------------|:--------|:-------------|" >> ${OUTPUT_FILE}

# Newest version on top
${TAC_BIN} ${TMP_HORIZON} >> ${OUTPUT_FILE}

echo "
# Meridian Versions
" >> ${OUTPUT_FILE}

echo "| Release Description | Version | Release Date |" >> ${OUTPUT_FILE}
echo "|:--------------------|:--------|:-------------|" >> ${OUTPUT_FILE}

# Newest version on top
${TAC_BIN} ${TMP_MERIDIAN} >> ${OUTPUT_FILE}

# Cleanup
rm ${TMP_HORIZON} ${TMP_MERIDIAN}