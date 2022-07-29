# Extract, Transform & Load (ETL) Project Report
#### by Huy Dinh, Alexander Powers, Jeya Emmanuel and Denise Okur

1. Extract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

The sources we found were CSV files. One contains up to date [gun violence data](https://www.gunviolencearchive.org/reports) in the United States, we narrowed our scope by focusing on accidental deaths, accidental injuries and mass shootings data. The other source contains the number of deaths from [overdosing on opioids](https://www.kaggle.com/datasets/apryor6/us-opiate-prescriptions?select=overdoses.csv) arranged by state in 2014. We believe analysis could be performed by linking these datasets by each state then finding correlations between gun violence and drug overdoses.

2. Transform: what data cleaning or transformation was required.

Pandas was used to read in the files to a Jupyter Notebook. The Operations and Address columns from the gun violence data were dropped, the Operations column didn't have sufficient information and the Address column wasn't in the right format and some rows had random data. The Abbrev column was dropped from the overdoses dataset as it was thought to be unnecessary for our purposes.

3. Load: the final database, tables/collections, and why this was chosen.

