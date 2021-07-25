## installer splunk 

https://www.laurentmarot.fr/wordpress/?p=4026

https://meritis.fr/comment-fonctionne-splunk/







https://docs.splunk.com/Documentation/Splunk/8.1.3/SearchTutorial/Aboutthesearchapp




http://splunk:8000/fr-FR/manager/search/data/ui/views?app_only=True&msgid=3258570.15310628986109753&sort_key=eai%3Aacl.sharing&sort_dir=desc&offset=25

http://splunk:8000/fr-FR/app/search/search


http://splunk:8000/fr-FR/manager/search/data/ui/nav?msgid=2295250.5973670525880231&ns=search&redirecting=true

http://splunk:8000/fr-FR/app/DNS_Insight/top_queries?earliest=-2m&latest=now&form.src=*&form.dest=*




http://splunk:8000/fr-FR/app/search/job_manager?jobStatus=RUNNING&owner=admin&countPerPage=50



index=_internal per_index_thruput earliest=-60d@d latest=now | timechart span=1d eval(sum(kb)/1024) as "Daily Indexing Volume in MB"


https://community.splunk.com/t5/Archive/Licence-violation-don-t-understand-why/m-p/439275