#Enable the plugin
$c->{plugins}{"Export::DataCiteXML"}{params}{disable} = 0;


#set these (you will get the from data site)
# doi = {prefix}/{repoid}/{eprintid}
$c->{datacitedoi}{prefix} = "10.5072";
$c->{datacitedoi}{repoid} = $c->{host};

# datacite requires a Publisher 
# The name of the entity that holds, archives, publishes, 
# prints, distributes, releases, issues, or produces the 
# resource. This property will be used to formulate the 
# citation, so consider the prominence of the role.
# eg World Data Center for Climate (WDCC); 	
$c->{datacitedoi}{publisher} = "Eprints Repo";

# need to map eprint type (article, dataset etc) to ResourceType
# Controled list http://schema.datacite.org/meta/kernel-2.2/doc/DataCite-MetadataKernel_v2.2.pdf
# where v is the ResourceType and a is the resourceTypeGeneral
$c->{datacitedoi}{typemap}{article} = {v=>'Article',a=>'Text'};
$c->{datacitedoi}{typemap}{dataset} = {v=>'Dataset',a=>'Dataset'};
$c->{datacitedoi}{typemap}{audio} = {v=>'Audio',a=>'Sound'};
$c->{datacitedoi}{typemap}{video} = {v=>'Video',a=>'Film'};