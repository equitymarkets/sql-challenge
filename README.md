# sql-challenge
Module 9 Challenge

After creating the table schema in quickdatabasediagrams.com, I exported the SQL for the tables, created the database on PGAdmin, imported the CSVs to populate the new tables, and queried the results. 

Schema Notes:

Since each table is required to have a primary key, salaries.emp_no is listed as both a primary key in the salaries table and a foreign_key relating to the primary_key employees.emp_no, with a one-to-one relationship, since employees.emp_no and salaries.emp_no are one-to-one. The salaries.salary column should have probably been included in the employees table, since the primary key is the same. 


schemata.sql contains the data to create the tables. composite.sql contains all 8 queries together. Individual queries are listed by file according to their number (question_01.sql, etc.).
