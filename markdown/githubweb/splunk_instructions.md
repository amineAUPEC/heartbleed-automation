plunk package app <appname>
If you are not logged in, you are prompted to do so.

The following example shows what this process might look like on Windows:

C:\> cd %SPLUNK_HOME%/bin

C:\Program Files\Splunk\bin> splunk package app myapp
App 'myapp' is packaged.
Package location: C:\Program Files\Splunk\share\splunk\app_packages\myapp.spl
  
  
  COPYFILE_DISABLE=1 tar -cvzf <appname>.tar.gz <appname_directory>
  
  
 [from](https://dev.splunk.com/enterprise/docs/releaseapps/packageapps)
  
  
  
