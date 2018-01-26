
## Setup the year variable

$parameter = $ARGV[0];
if ($parameter =~ /2011/)    { $year = 2011;}
elsif ($parameter =~ /2012/) { $year = 2012;}
elsif ($parameter =~ /2013/) { $year = 2013;}
elsif ($parameter =~ /2014/) { $year = 2014;}
elsif ($parameter =~ /2015/) { $year = 2015;}
elsif ($parameter =~ /2016/) { $year = 2016;}
elsif ($parameter =~ /2017/) { $year = 2017;}
else {$year = ""};

## Set validated or not.  Default for column is FALSE


if ($ARGV[1] =~ /v/) { $validated = TRUE} else {$validated = FALSE};


## Get the table name lists

@tables_full = qw ( 
 curr_avail
 curr_availfail
 curr_dlping
 curr_dns
 curr_httpget
 curr_httpgetmt
 curr_httpgetmt6
 curr_httppost
 curr_httppostmt
 curr_httppostmt6
 curr_netusage
 curr_ping
 curr_ping6
 curr_udpjitter
 curr_udplatency
 curr_ulping
 curr_videostream
 curr_webget
 curr_webgetobjects
 curr_www
);


@tables = qw (
 curr_httpgetmt
 curr_httppostmt
 curr_udplatency
);

## Load only the table matching the filename

chomp(@tables);

foreach $table (@tables) {

#print "$parameter $tablematch \n";

if ($parameter =~ /[\/]$table[_\b\.]/) 
{
$newtable = $table .  '_tmp_' ;

## Create TMP Table; copy values; set year and validation flag (ignore filename); UNION the tmp table; and drop tmp
# Delete the two validated and year variables from the temp table to make ingress easier (avoid naming all fields)

print "create table $newtable as \(select * from $table limit 0\);" ;

print "ALTER TABLE $newtable DROP COLUMN validated;";
print "ALTER TABLE $newtable DROP COLUMN year ;";

print "\\copy $newtable from '" , $parameter , "'  with NULL as 'NULL' csv header delimiter ',' ;\n " ;

print "ALTER TABLE $newtable add COLUMN validated boolean default $validated;";
print "ALTER TABLE $newtable add COLUMN year numeric default $year;";

print " create table tmp as ( select * from $table ) union ( select * from $newtable ); "; 
print " insert into $table select * from  tmp; "; 
print "drop table $newtable ;" ;
print "drop table tmp; " ;
print "select '" , $parameter , "' , now();" ; 

print "\n\n\n";
}
}




