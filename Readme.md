# Distinct Value Count
When working with D365 BC, there may be times when you need to retrieve distinct values from a table along with the count of each distinct value's occurrences. This can be especially useful for reporting and data analysis purposes.

# Scenario Overview
Imagine you have a "Sales Invoice Line" table that includes a custom field called "Integration Code." You want to find all the distinct integration codes and count how many times each one appears in the table.

# Step 1: Define the Query Object
To retrieve distinct "Integration Code" values and their counts, start by creating a query object. This query will group the records by "Integration Code" and count the number of records in each group.

# Key Points:
* Integration Code Column: 
This column retrieves the "Integration Code" values from the "Sales Invoice Line" table.
* Count Column: 
The Count column counts the number of occurrences of each distinct integration code using the Method = Count; property.
* Filter: 
We filter out any blank values to ensure we're only counting meaningful data.

# Step 2: Create a Codeunit to Retrieve Data
Next, create a codeunit that will execute the query and process the results. This codeunit will store the distinct values and their counts in a dictionary.

# Key Points:
* Query Execution: 
The codeunit opens the query and iterates through the results.
* Dictionary Storage: 
Each integration code and its count are stored in a Dictionary, where the key is the integration code and the value is the count