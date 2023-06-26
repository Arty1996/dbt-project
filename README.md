# The instructions for adding data from new ad platforms


After adding the new ad data to the folder *seed* in project repository, you need to do the following steps:

1. open MCDM project in dbt Cloud;
2. create new branch;
3. run dbt command **dbt seed** for you able to use the new data as a source;
4. create a folder with the name of your source in *staging* folder
5. create raw sql file in the created folder and import all data via select and *ref* function;
6. create transform sql file with relevant columns and datatypes (check other files in *staging* folder and *basic_performance_structure*, use *ref* function);
7. edit the file *marts/paid_ads__basic_performance.sql*, add the query at the end with link to transform data via *UNION ALL* and *ref* (see previous queries);
8. click *Preview* button and check that all work;
9. run dbt command **dbt run**;
10. save all changes and commit;
11. check that your database in BigQuery is updated;
12. open MCDM dashboard via LookerStudio and refresh data.

Now you will see the new data on the MCDM model dashboard=)