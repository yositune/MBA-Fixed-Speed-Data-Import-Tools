# MBA-Fixed-Speed-Data-Import-Tools

Measuring Broadband America Program Fixed Data Import Tools
https://www.fcc.gov/general/measuring-broadband-america

These tools assist a developer or researcher in importing data into a relational database.  Interested developers and researchers are encouraged to review the Developer and Researcher FAQ at:
https://www.fcc.gov/general/developer-and-researcher-faq-measuring-broadband-america-data-february-report-2013

While all MBA related OpenData is released with data dictionaries, database managegment schema and support scripts, these scripts aid in bulk loadiing (ETL) of CSV files.  They particularly address the need to merge new data into tables and mark rows that appeared in a raw or verified dataset.  For that reason the tool assumes two variables in each table that are not part of the standard schemas accompanying the released datasets.  See the schema in this repository.

tmpCreateTable.pl:
This PERL script generates a SQL query command list to import an MBA data export in CSV merging with an existing table.  The tool can be used to generate a script to import a single file or in combination with other tools to parse an entire archive and import any arbitrary set of MBA data that is from a validated set used in annual reports or with raw monthly exports.  The script assumes an MBA schema that includes a numeric 'year' and boolean 'validated' column.  These columns are recommended for managing mixed datasets that include both validated and raw MBA CSV data exports, but are not required.  Minor edits to the PERL would eliminate the need for the operations in the script.. but also this entire effort! ;)

tmpCreateTable.pl script takes a single argument for the path / filename of the target CSV, and an optional "v" to indicate a validated data.  Using the script in combination with a file management tool helps automate archives of files.  Automated monthly updating could be easily scripted with CRON and shell scripting.
Example:
find fixed-raw/ -name "*.csv" -type f  -exec perl tmpTableCreate.pl {} \; >import-Fixed_get_post_udp.sql
