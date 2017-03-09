BEGIN { RS = ""; FS = "\n"  }
{
  v = $2
  gsub(/\./, "_", v)
  print "| [[fa=file-text-o /]](http://meridian.opennms.com/releasenotes/2016/latest/#_opennms_" v " \"Release Changelog\") [[fa=leaf /]](https://issues.opennms.org/secure/ReleaseNote.jspa?projectId=10001&version=" $5 " \"Issues related to this Release in JIRA\") " $1 " |  " $2 " | " $3 " | "
}
