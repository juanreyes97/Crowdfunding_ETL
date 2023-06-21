# Crowdfunding_ETL

# Instructions
The instructions for this mini project are divided into the following subsections:

- Create the Category and Subcategory DataFrames
- Create the Campaign DataFrame
- Create the Contacts DataFrame
- Create the Crowdfunding Database

# Create the Category and Subcategory DataFrames
1. Extract and transform the `crowdfunding.xlsx` Excel data to create a category DataFrame that has the following columns:

- A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
- A "category" column that contains only the category titles
- The following image shows this category DataFrame:
![image](https://github.com/juanreyes97/Crowdfunding_ETL/assets/127918227/4435477d-5efb-4ad0-a74d-d3c945062f17)

2. Export the category DataFrame as category.csv and save it to your GitHub repository.

3. Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

- A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
- A "subcategory" column that contains only the subcategory titles
- The following image shows this subcategory DataFrame:
![image](https://github.com/juanreyes97/Crowdfunding_ETL/assets/127918227/1960599e-0a69-40b1-b824-8dc4ffa77c6f)

4. Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

# Create the Campaign DataFrame
1. Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
- The "cf_id" column
- The "contact_id" column
- The "company_name" column
- The "blurb" column, renamed to "description"
- The "goal" column, converted to the float data type
- The "pledged" column, converted to the float data type
- The "outcome" column
- The "backers_count" column
- The "country" column
- The "currency" column
- The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
- The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
- The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
- The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
- The following image shows this campaign DataFrame:
![image](https://github.com/juanreyes97/Crowdfunding_ETL/assets/127918227/1931a4a2-e2a8-4ba4-9262-6a11ac15e212)

2. Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

# Create the Contacts DataFrame
1. Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
- Option 1: Use Python dictionary methods.
- Option 2: Use regular expressions.

2. If you chose Option 1, complete the following steps:
- Import the contacts.xlsx file into a DataFrame.
- Iterate through the DataFrame, converting each row to a dictionary.
- Iterate through each dictionary, doing the following:
  - Extract the dictionary values from the keys by using a Python list comprehension.
  - Add the values for each row to a new list.
- Create a new DataFrame that contains the extracted data.
- Split each "name" column value into a first and last name, and place each in a new column.
- Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

3. If you chose Option 2, complete the following steps:
- Import the contacts.xlsx file into a DataFrame.
- Extract the "contact_id", "name", and "email" columns by using regular expressions.
- Create a new DataFrame with the extracted data.
- Convert the "contact_id" column to the integer type.
- Split each "name" column value into a first and a last name, and place each in a new column.
- Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

4. Check that your final DataFrame resembles the one in the following image:
![image](https://github.com/juanreyes97/Crowdfunding_ETL/assets/127918227/7c8456c1-1671-46e1-9516-074bcb0edb7a)


