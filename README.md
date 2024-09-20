# Crowdfunding ETL Project

## Overview

This ETL (Extract, Transform, Load) mini project is designed to practice building an ETL pipeline using Python and Pandas. The project focuses on extracting data from Excel files, transforming it into four distinct DataFrames, and then loading the cleaned data into a PostgreSQL database. The process involves creating categories, subcategories, campaigns, and contacts DataFrames, and then exporting them to CSV files to be used in the database.

This project was completed in collaboration with AdebolaShelby and KhaliaBoone. It showcases the workflow and collaboration involved in developing an ETL pipeline and database schema.

---

## Files Included

- `crowdfunding.xlsx` - Source data for crowdfunding categories, subcategories, and campaigns.
- `contacts.xlsx` - Source data for contacts associated with the campaigns.
- `ETL_Mini_Project_BHamiltonBrown_KBoone_AShelby.ipynb` - Jupyter notebook containing the Python code for the ETL process.
- `category.csv` - Transformed CSV file for categories.
- `subcategory.csv` - Transformed CSV file for subcategories.
- `campaign.csv` - Transformed CSV file for campaigns.
- `contacts.csv` - Transformed CSV file for contacts.
- `crowdfunding_db_schema.sql` - PostgreSQL database schema.
- `crowdfunding_ERD.png` - Entity-Relationship Diagram.

---

## Project Instructions

### 1. Extract Data

We extracted data from two Excel files:

- `crowdfunding.xlsx`: Contains details about the crowdfunding campaigns, categories, and subcategories.
- `contacts.xlsx`: Contains contact information for the campaigns.

### 2. Transform Data

#### Category and Subcategory DataFrames

- **Category DataFrame**: 
  - Extracted unique categories.
  - Assigned a sequential `category_id` (`cat1`, `cat2`, etc.).
  - Saved to `category.csv`.

- **Subcategory DataFrame**:
  - Extracted unique subcategories.
  - Assigned a sequential `subcategory_id` (`subcat1`, `subcat2`, etc.).
  - Saved to `subcategory.csv`.

#### Campaign DataFrame

- Extracted relevant data, including the campaign description, goal, pledged amounts, and backer counts.
- Cleaned and transformed the following:
  - Renamed `blurb` to `description`.
  - Converted `goal` and `pledged` columns to `float`.
  - Converted UTC times in `launched_at` and `deadline` columns to `datetime` format.
  - Merged `category_id` and `subcategory_id` from the category and subcategory DataFrames.
  - Saved to `campaign.csv`.

#### Contacts DataFrame

- Used Python dictionary methods (or regular expressions) to extract and clean the contacts.
- Split names into `first_name` and `last_name` columns.
- Saved to `contacts.csv`.

### 3. Load Data

- Created a PostgreSQL database named `crowdfunding_db`.
- Designed an ERD (Entity-Relationship Diagram) and a table schema.
- Imported each CSV into its corresponding table using the schema in `crowdfunding_db_schema.sql`.


---

## Conclusion

This project demonstrates how to efficiently build an ETL pipeline using Python, Pandas, and PostgreSQL.
