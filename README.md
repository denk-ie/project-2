# Extract, Transform & Load (ETL) Project Report

## by Huy Dinh, Alexander Powers, Jeya Emmanuel and Denise Okur

*** 1. Extract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc) ***

The sources we found were CSV files. One contains up to date [gun violence data](https://www.gunviolencearchive.org/reports) in the United States, we narrowed our scope by focusing on accidental deaths, accidental injuries and mass shootings data. The other source contains the number of deaths from [overdosing on opioids](https://www.kaggle.com/datasets/apryor6/us-opiate-prescriptions?select=overdoses.csv) arranged by state.

*** 2. Transform: what data cleaning or transformation was required ***

Pandas was used to read in the files to a Jupyter Notebook. The Operations and Address columns from the gun violence data were dropped, the Operations column didn't have sufficient information and the Address column wasn't in the right format and some rows had random data. The Abbrev column was dropped from the overdoses dataset as it was thought to be unnecessary for our purposes.

There were rows in the gun violence dataset that contained a state that was not in the overdoses dataset, so rows containing "District of Columbia" as the state were removed.

*** 3. Load: the final database, tables/collections, and why this was chosen ***

**Database name**: gun_violence_db

**Tables from the Gun violence and Overdosing on opiods data sets**

**First Data Set**

- ID
- incident_id
- incident_date
- state
- city_county
- no_injured
- no_killed

**Second Data Set**

- ID
- state
- population
- deaths

We chose these data sets as we believe analysis could be performed by linking these datasets by each state then finding correlations between gun violence and drug overdoses and ran some queries to find the total number of deaths from each table based on the states
