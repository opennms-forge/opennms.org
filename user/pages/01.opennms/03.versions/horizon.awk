BEGIN { RS = ""; FS = "\n"  }
{
  print "| [[fa=file-text-o /]](http://docs.opennms.org/opennms/releases/" $2 "/releasenotes/releasenotes.html#releasenotes-changelog-" $2 ") [[fa=leaf /]](https://issues.opennms.org/secure/ReleaseNote.jspa?projectId=10001&version=" $5 ") " $1 " |  " $2 " | " $3 " | "
}
