//
//  DataModeling.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 14/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import Foundation


func DataModeling() -> [Questions] {
    
    var questions = [Questions]()
    
    // MARK: Questions
    
    
    // 1 Which of the following is FALSE about AutoNumber?	AutoNumber takes an expression and return a sequential integer	AutoNumber takes Alphanumeric values and returns an integer	AutoNumber takes a text value and returns an Unique Alpha numeric string	AutoNumber depends on Load order	AutoNumber takes a text value and returns an Unique Alpha numeric string	AutoNumber returns a sequential integer and not a alphanumeric string
 																		
    let one = Questions()
    one.question = "Which of the following is FALSE about AutoNumber?"
    one.optionA = "AutoNumber takes an expression and return a sequential integer"
    one.optionB = "AutoNumber takes Alphanumeric values and returns an integer"
    one.optionC = "AutoNumber takes a text value and returns an Unique Alpha numeric string"
    one.optionD = "AutoNumber depends on Load order"
    
    one.rightAnswer = "AutoNumber takes a text value and returns an Unique Alpha numeric string"

    one.explanation = "AutoNumber returns a sequential integer and not a alphanumeric string"
    
    questions.append(one)
    
    // 2
    let two = Questions()
    two.question = "In our data model, in Employee table there is field called New Employee and has flag Y or N.             What type of CARDINAL value does the New Employee field carries?"
    two.optionA = "Low Cardinality and has cardinality value of 2"
    two.optionB = "Normal Cardinality"
    two.optionC = "High Cardinality and has cardinality value of 2"
    two.optionD = "No Cardinality"

    two.rightAnswer = "Low Cardinality and has cardinality value of 2"

    two.explanation = "Cardinality means number of uniques values in a field. Hence it is a low cardinal field with 2 unique values"

    questions.append(two)
    
    // 3
    let three = Questions()
    three.question = "There is following two scenario in our data model: \nScenario A: A fact table includes Year, Month and Date field.\nScenario B: A fact table and a separate calendar table which contains Year, Month and Date and are connected to the fact table via a shared key.\n\nWhich of the scenario is better and why?"
    three.optionA = "Scenario A is better as all fields are in same table and would take less time to query"
    three.optionB = "Both would result in similar performance"
    three.optionC = "Scenario B is better"
    three.optionD = "Such difference doesn't have any effect in data model performance"

    three.rightAnswer = "Scenario B is better"

    three.explanation = "Scenario B is better because Year, Date and Month are low cardinal fields and hence it is better to split them into a separate table. Hence keeping them in separate table will reduce the memory footprint. This can be checked using the memory statistics in Document Properties > General > Memory Statistics"
    
    questions.append(three)
    
    // 4
    let four = Questions()
    four.question = "Given a scenario where fact tables are relatively much smaller than the dimension tables, then which is a better to use Set Analysis or Create Flag Fields? "
    four.optionA = "Set Analysis would be slower than the flag fields"
    four.optionB = "Set Analysis would be faster than the flag fields"
    four.optionC = "They both will have similar performance"
    four.optionD = "Fact tables are always larger than dimension tables, and hence both method are equally optimized"

    four.rightAnswer = "Set Analysis would be faster than the flag fields"

    four.explanation = "Set Analysis would be faster than the flag fields, because set analysis will reduce the set first and then do the calculation on the reduced set."
    
    questions.append(four)
    
    // 5
    let five = Questions()
    five.question = "Among the following sorts, which one is the quickest? \nA. Sort numbers \nB. Sort Alphabetically \nC. Sort by Expression \nD. Setting up an inline load with defined sort order by business rules in back end script, drop the table and just check load order in sort tab?"
    five.optionA = "A"
    five.optionB = "B"
    five.optionC = "C"
    five.optionD = "D"

     five.rightAnswer = "D"
    five.explanation = "Because the inline load has already sorted it, Qlik will not sort it again and hence quickest"
   
    
    questions.append(five)
    
    
    
    //6
    let six = Questions()
    six.question = "Which of the following is true about Direct Discovery?\nA. Direct Discovery allows Qlikview data model to directly connectwith only one data source without having to load all data into in-memory\nB. To calculate the measures, Qlikview generates a query to retrieve results from data sources\nC. Because Direct Discovery works on the fly, hence set analysis can make it more efficient\nD. The name of the direct discovery table should always be named DirectDiscoveryTable and no alias could be made"
    six.optionA = "A"
    six.optionB = "B"
    six.optionC = "C"
    six.optionD = "D"
    
    six.rightAnswer = "D"
    six.explanation = "To calculate the measures, Qlikview generates a query to retrieve results from data sources. Only option B is correct. Rest all are false"
    questions.append(six)
    
    
    //7
    let seven = Questions()
    seven.question = "Given a SQL query like the following, say table emp already exists:\ncreate table emp1 as select * from emp where 1=2; what would be the output?"
    seven.optionA = "This statement will create a new table 'emp1' and contain all records same as in table emp"
    seven.optionB = "This statement will create a new table 'emp1' but will contain only the same structure as in emp"
    seven.optionC = "This statement will throw a SQL error as in where condition 1 is not equal to 2."
    seven.optionD = "This statement will not return any thing as the condition 1=2 doesn't match"
    
    seven.rightAnswer = "This statement will create a new table 'emp1' but will contain only the same structure as in emp"
    seven.explanation = "This statement will create a new table 'emp1' but will contain only the same structure as in emp"
    questions.append(seven)
    
    
    //8
    let eight = Questions()
    eight.question = " Which of the following is NOT correct for ODBC?"
    eight.optionA = "ODBC drivers for a data base needs to be installed in all environment"
    eight.optionB = "ODBC drivers once installed in Development/Sandbox environment, then it is not required to be installed in UAT/Production system. The connect string should still work"
    eight.optionC = "ODBC drivers are configured at Operating System level"
    eight.optionD = "ODBC driver settings are stored in the system registry"
    
    eight.rightAnswer = "ODBC drivers once installed in Development/Sandbox environment, then it is not required to be installed in UAT/Production system. The connect string should still work"
    eight.explanation = "Option B is false, you need to install ODBC drivers in all environment"
    questions.append(eight)
    
    
    //9
    let nine = Questions()
    nine.question = " Which of the following is NOT correct for OLEDB?"
    nine.optionA = "OLEDB connection is usually faster for Microsoft databases"
    nine.optionB = "OLEDB driver settings are stored in the system registry"
    nine.optionC = "OLEDB connection information is stored in Qlikview's connect statement"
    nine.optionD = "OLEDB drivers for a data base needs to be installed in all environment"
    
    nine.rightAnswer = "OLEDB driver settings are stored in the system registry"
    nine.explanation = "Option B is false"
    questions.append(nine)
    
    
    //10
    let ten = Questions()
    ten.question = " What does the DETACH parameter in Direct Discovery do?"
    ten.optionA = "It detaches the fields which are not to be included in the data model but could be included in the SQL query"
    ten.optionB = "It defines the fields which are not to be passed in SQL query"
    ten.optionC = "Detach fields are available in the data model but cannot be used in Expression"
    ten.optionD = "Detach fields create a Data Island within the data model"
    
    ten.rightAnswer = "It detaches the fields which are not to be included in the data model but could be included in the SQL query"
    ten.explanation = "It detaches the fields which are not to be included in the data model but could be included in the SQL query"
    questions.append(ten)
    
    //11
    let eleven = Questions()
    eleven.question = "Given the following script, if we execute the script what is the output result?\n\nCustomer:\nLoad * Inline [\nCustomerID, Customer+\n123, ABC\n234, CDF\n]\n\nOrder:\nLoad * Inline [\nOrderDate, CustomerId, Price, Qty\n12/1/2016, 123, 120, 5\n15/2/2017, 123, 25, 7\n13/5/2016, 234, 30, 3\n1/3/2017, 234, 5, 2\n];"
    eleven.optionA = "Customer table will be linked with the Order table"
    eleven.optionB = "Order table will merge with the Customer table"
    eleven.optionC = "Customer and Order table will be loaded as separate table"
    eleven.optionD = "Order table will forced concatenated with the Customer table"
    
    eleven.rightAnswer = "Customer and Order table will be loaded as separate table"
    eleven.explanation = "Qlikview field names are case sensitive"
    questions.append(eleven)
    
    //12
    let twel = Questions()
    twel.question = "Given the following script, if we execute the script what is the output result?\nCustomer:\nLoad * Inline [\nCustomerID, Customer, Year\n123, ABC, 2016\n234, CDF, 2017\n];\n\nOrder:\nLoad * Inline [\nOrderDate, CustomerID, Price, Qty, Year\n12/1/2016, 123, 120, 5, 2016\n15/2/2017, 123, 25, 7, 2017\n13/5/2016, 234, 30, 3, 2016\n1/3/2017, 234, 5, 2, 2017\n];"
    twel.optionA = "Customer table will be linked with the Order table but through a Synthetic Key table containing all the fields from Customer table"
    twel.optionB = "Customer table will be linked with the Order table but through a Synthetic Key table containing CustomerID and Year field"
    twel.optionC = "Customer table and Order table will be joined based on two keys CustomerID and Year fields"
    twel.optionD = "Order table and Customer table will be connected via a link table containing Year and CustomerID fields"
    
    twel.rightAnswer = "Customer table will be linked with the Order table but through a Synthetic Key table containing CustomerID and Year field"
    twel.explanation = "Customer table will be linked with the Order table but through a Synthetic Key table containing CustomerID and Year field"
    questions.append(twel)
    
    //13
    let thirteen = Questions()
    thirteen.question = "What does the DETACH parameter in Chart Properties do?"
    thirteen.optionA = "The chart could be independently moved among sheets"
    thirteen.optionB = "It permanently detaches from entire application"
    thirteen.optionC = "It is locked in current state and doesn't change with further selection"
    thirteen.optionD = "Detach separates the data fields in the chart from the data model"
    
    thirteen.rightAnswer = "It is locked in current state and doesn't change with further selection"
    thirteen.explanation = "It is locked in current state and doesn't change with further selection"
    questions.append(thirteen)
    
    //14
    let fourteen = Questions()
    fourteen.question = "What is Information density?"
    fourteen.optionA = "Information Density is the ratio of number of non-null values compared to total number of all values in the Qlikview data model"
    fourteen.optionB = "Information Density is the ratio of number of non-null values compared to total number of records in that table"
    fourteen.optionC = "Information Density is the ratio of number of non-null values to null values in that table"
    fourteen.optionD = "Information Density is the ratio of total number of null values compared to all records in all tables in the Data Model"
    
    fourteen.rightAnswer = "Information Density is the ratio of number of non-null values compared to total number of records in that table"
    fourteen.explanation = "Information Density is the ratio of number of non-null values compared to total number of records in that table"
    questions.append(fourteen)
    
    
    //15
    let fixteen = Questions()
    fixteen.question = "What is the restriction in using AutoNumberHash128() function in load script?"
    fixteen.optionA = "AutoNumberHash128() only works with Inline Load"
    fixteen.optionB = "AutoNumberHash128() is dependent on the order the table is loaded"
    fixteen.optionC = "AutoNumberHash128() needs minimum two input expression"
    fixteen.optionD = "AutoNumberHash128() is used to conserve memory for a complex key"
    
    fixteen.rightAnswer = "AutoNumberHash128() is dependent on the order the table is loaded"
    fixteen.explanation = "AutoNumberHash128() is dependent on the order the table/values are loaded in Load Script."
    questions.append(fixteen)
    
    
    //16
    let sixteen = Questions()
    sixteen.question = "What is false about Hash128() function?"
    sixteen.optionA = "Hash128() function always returns a 22 character string"
    sixteen.optionB = "Hash128() function is dependent on the order the table is loaded"
    sixteen.optionC = "Hash128() returns a 128-bit hash of the combined inputs"
    sixteen.optionD = "All Statements are Correct"
    
    sixteen.rightAnswer = "Hash128() function is dependent on the order the table is loaded"
    sixteen.explanation = "Hash128() is not dependent on the order the table is loaded. Hence it is usually used in lieu of AutoNumberHash()"
    questions.append(sixteen)
    
    
    //17
    let seventeen = Questions()
    seventeen.question = "Given a scenario like the following script what should be the output?\n\nDataTable:\nLoad * Inline [\nField1, Field2\n1, A\n2, B\n3, C\n];\nLeft Join (DataTable)\nLoad * Inline [\nField3, Field4\n4, X\n5, Y\n6, Z\n];"
    seventeen.optionA = "DataTable will have 3 records and 3 columns"
    seventeen.optionB = "DataTable will have 6 records and 3 columns"
    seventeen.optionC = "DataTable will have 9 records and 4 columns"
    seventeen.optionD = "DataTable will undergo a left join but because of no common fields, DataTable will still have 3 records and 2 columns"
    
    seventeen.rightAnswer = "DataTable will have 9 records and 4 columns"
    seventeen.explanation = "DataTable will undergo a cartesian join and hence will have 9 records and 4 columns"
    questions.append(seventeen)
    
    
    //18
    let eighteen = Questions()
    eighteen.question = "Which of the following statement is false?\n\nA. Null values in Dimension tables are completely ignored by Qlikview\nB. Null values in Fact Tables are completely ignored by Qlikview\nC. Null values in Dimension tables will create a disconnect with Fact tables.\nD. Additional row should be added in Dimension table to add a default value to handle null values?"
    eighteen.optionA = "A"
    eighteen.optionB = "B"
    eighteen.optionC = "C"
    eighteen.optionD = "D"
    
    eighteen.rightAnswer = "A"
    eighteen.explanation = "Null Values in Fact table are ignored by Qlikview but not in Dimension tables"
    questions.append(eighteen)
    
    
    //19
    let nineteen = Questions()
    nineteen.question = "Given the following scenario in our data model:\n\nFact:\nLoad * inline [\nCustomerID, Sales\n1, 200\n2, 200\n3, 500\n4, 100\n5, 300\n];\n\nCountry:\nLoad * inline [\nCustomerID, CustomerName, Country\n1, A, India\n2, B, USA\n3, C, China\n4, D, UK\n];\n\nAs there is an additional CustomerID=5 record in Fact table, it is a good idea to add a default record for CustomerID= 5 in Country table as well.\n\nHence our developers are trying to use Not Exists function in the Where clause, but it is not working. What could be the reason?"
    nineteen.optionA = "Not Exist only works when Dimension table has more records versus fact table"
    nineteen.optionB = "Not Exist won't work because for CustomerID field already the Symbol Table for CustomerID field is filled with all possible values. Instead LookUp function should be used"
    nineteen.optionC = "Not Exists should be used in if/else condition and not in Where condition"
    nineteen.optionD = "Not Exist should be used with a Having clause and not with Where clause"
    
    nineteen.rightAnswer = "Not Exist won't work because for CustomerID field already the Symbol Table for CustomerID field is filled with all possible values. Instead LookUp function should be used"
    nineteen.explanation = "Same as Correct Option"
    questions.append(nineteen)
    
    
    //20
    let twenty = Questions()
    twenty.question = "What is the difference between Type 1 and Type 2 slowly changing dimension?"
    twenty.optionA = "Type 1 maintains historical data and Type 2 overwrite the record hence no historical data"
    twenty.optionB = "In Type 2 new records are added when new or updated data is received versus in type 1 which overwrites current record with new data"
    twenty.optionC = "In Type 1 new columns are added for new or updated data"
    twenty.optionD = "In Type 2 new columns and new rows are added for new or updated data"
    
    twenty.rightAnswer = "In Type 2 new records are added when new or updated data is received versus in type 1 which overwrites current record with new data"
    twenty.explanation = "Same as Correct Option"
    questions.append(twenty)
    
    //21
    let twentyone = Questions()
    twentyone.question = "Which of the following is NOT a part of QVD?"
    twentyone.optionA = "QVD contains an XML header"
    twentyone.optionB = "It contains symbol tables for each field in the data"
    twentyone.optionC = "It has a bit-stuffed data table of indexes to point to the symbol table values"
    twentyone.optionD = "The symbol tables for each fields are bit stuffed"
    
    twentyone.rightAnswer = "The symbol tables for each fields are bit stuffed"
    twentyone.explanation = "The symbol tables for each fields are actually Byte stuffed"
    questions.append(twentyone)
    
    
    //22
    let twentytwo = Questions()
    twentytwo.question = "Which of the following operation causes unoptimized load?"
    twentytwo.optionA = "Rename Field using As"
    twentytwo.optionB = "Where clause with a single Exists"
    twentytwo.optionC = "Where Field1 > 500 clause"
    twentytwo.optionD = "None of the above"
    
    twentytwo.rightAnswer = "Where Field1 > 500 clause"
    twentytwo.explanation = "Where condition to reduce data will cause unoptimized load. Where clause with Exists is optimized load"
    questions.append(twentytwo)
    
    
    //23
    let twentythree = Questions()
    twentythree.question = "Which of the following is not directly associated with uses of QVD?"
    twentythree.optionA = "Incremental Load"
    twentythree.optionB = "Reading data from QVD is faster"
    twentythree.optionC = "Data from multiple data sources could be combined"
    twentythree.optionD = "QVD helps in load balancing of application"
    
    twentythree.rightAnswer = "QVD helps in load balancing of application"
    twentythree.explanation = "The first three options are common usage of QVDs"
    questions.append(twentythree)
    
    
    //24
    let twentyfour = Questions()
    twentyfour.question = "What information does the Tables tab in Document Properties provide?"
    twentyfour.optionA = "Administrative Metadata"
    twentyfour.optionB = "Structural Metadata"
    twentyfour.optionC = "Descriptive Metadata"
    twentyfour.optionD = "Inferential Metadata"
    
    twentyfour.rightAnswer = "Structural Metadata"
    twentyfour.explanation = "Same as Correct Option"
    questions.append(twentyfour)
    
    
    //25
    let twentyFive = Questions()
    twentyFive.question = "How would you handle incremental load when there is deleted records in data source and no modified date?"
    twentyFive.optionA = "The XML header in every QVD contains information about all records, hence we can read qvd as xml and find it"
    twentyFive.optionB = "There is always a timestamp in all records in QVD"
    twentyFive.optionC = "Using an inner join between the data source and existing QVD based on the primary key value"
    twentyFive.optionD = "Incremental load is used only when new or updated records are added"
    
    twentyFive.rightAnswer = "Using an inner join between the data source and existing QVD based on the primary key value"
    twentyFive.explanation = "Same as Correct Option"
    questions.append(twentyFive)
    
    
    //26
    let twentySix = Questions()
    twentySix.question = "In a scenario we need to use mapping tables in our partial reload. How can we achieve it?"
    twentySix.optionA = "Mapping load are usually removed after load. Hence partial reload is not possible"
    twentySix.optionB = "Partial reload ignores tables that are normally loaded"
    twentySix.optionC = "Mapping tables needs to be loaded with REPLACE keyword"
    twentySix.optionD = "Mapping tables needs to be loaded with ADD keyword"
    
    twentySix.rightAnswer = "Mapping tables needs to be loaded with REPLACE keyword"
    twentySix.explanation = "Mapping loads needs to be reloaded with Replace Keyword else it will not be available during partial reload"
    questions.append(twentySix)
    
    
    //27
    let twentySeven = Questions()
    twentySeven.question = "Which of the following is NOT correct for optimized load?"
    twentySeven.optionA = "Using Rename Field As"
    twentySeven.optionB = "Using Where Exists"
    twentySeven.optionC = "Using Where Not Exists"
    twentySeven.optionD = "Using If...else"
    
    twentySeven.rightAnswer = "Using If...else"
    twentySeven.explanation = "Using If...else will cause unoptimized load"
    questions.append(twentySeven)
    
    
    //28
    let twentyEight = Questions()
    twentyEight.question = "Please consider the following script:\n\nFact:\nLoad\nDate,\nCustomerID,\nProductID,\nQty,\nUnitPrice\nFrom\nActual.QVD (QVD);\n\nConcatenate (Fact)\nLoad\nDate,\nCustomerID,\nProductID,\nBudgetQty,\nBudgetPrice\nFrom\nBudget.QVD (QVD);\n\nWhich of the following is NOT correct?"
    twentyEight.optionA = "Actual.QVD is optimized load"
    twentyEight.optionB = "Budget.QVD is unoptimized load"
    twentyEight.optionC = "Budget.QVD is optimized load"
    twentyEight.optionD = "A forced concatenation is used between Actual and Budget table"
    
    twentyEight.rightAnswer = "Budget.QVD is optimized load"
    twentyEight.explanation = "Budget.QVD is unoptimized because the field names do not match with Actual.QVD hence Qlikview has to work to force concatenate. Hence unoptimized."
    questions.append(twentyEight)
    
    //29
    let twentyNine = Questions()
    twentyNine.question = "In the following scenario:\n\nSet vS = 2+3;\nLet vL = vS & '+1';\nWhat would be value of vL"
    twentyNine.optionA = "6"
    twentyNine.optionB = "51"
    twentyNine.optionC = "2+3+1"
    twentyNine.optionD = "2+31"
    
    twentyNine.rightAnswer = "2+3+1"
    twentyNine.explanation = "Because string and number cannot be added, in such case, number is also converted to string"
    questions.append(twentyNine)
    
    
    //30
    let thirty = Questions()
    thirty.question = "What is a crosstable scenario?"
    thirty.optionA = "CrossTable is a scenario where expected fieldvalues are expressed as columns. Like Jan, Feb, Mar etc are fields in the data"
    thirty.optionB = "CrossTable is a scenario where entire data table is inverted"
    thirty.optionC = "CrossTable is a scenario where there is Generic data loaded and relation among fields do not co exist"
    thirty.optionD = "CrossTable is a scenario where Qlikview reload returns null"
    
    thirty.rightAnswer = "CrossTable is a scenario where expected fieldvalues are expressed as columns. Like Jan, Feb, Mar etc are fields in the data"
    thirty.explanation = "Same as Correct Option"
    questions.append(thirty)
    
    
    //31
    let thirtyOne = Questions()
    thirtyOne.question = "In the following scenario:\n\nSet vS = 2+3;\n\nLet vL = $(vS) & '+1';\n\nWhat would be value of vL?"
    thirtyOne.optionA = "2+3+1"
    thirtyOne.optionB = "5+1"
    thirtyOne.optionC = "6"
    thirtyOne.optionD = "51"
    
    thirtyOne.rightAnswer = "5+1"
    thirtyOne.explanation = "Number and string cannot be added. Hence 5+1 as string"
    questions.append(thirtyOne)
    
    
    //32
    let thirtyTwo = Questions()
    thirtyTwo.question = "Which of the following statement is NOT a best practice?\nA. Splitting high cardinal fields into multiple low cardinal fields is a good idea in Data Modeling\nB. Low cardinal is better compressed by Qlikview\nC. Removing unused fields in Data Model\nD. Joining tables into one large Table. Less separate tables hence better performance."
    thirtyTwo.optionA = "A"
    thirtyTwo.optionB = "B"
    thirtyTwo.optionC = "C"
    thirtyTwo.optionD = "D"
    
    thirtyTwo.rightAnswer = "D"
    thirtyTwo.explanation = "It depends in various scenarios, Usually it is not a good practice"
    questions.append(thirtyTwo)
    
    
    //33
    let thirtyThree = Questions()
    thirtyThree.question = "Which of the following is a NOT a good data modeling practice"
    thirtyThree.optionA = "Using AutoNumber/Hash for composite keys"
    thirtyThree.optionB = "Keep snowflaked tables"
    thirtyThree.optionC = "Remove unused fields and tables"
    thirtyThree.optionD = "Avoid synthetic and circular loops"
    
    thirtyThree.rightAnswer = "Keep snowflaked tables"
    thirtyThree.explanation = "Same as Correct Option"
    questions.append(thirtyThree)
    
    
    //34
    let thirtyFour = Questions()
    thirtyFour.question = "When you have two fact tables which of the following do you think is not a good practice?"
    thirtyFour.optionA = "Connect fact tables to a Link Table and connect dimension tables to this Link Table"
    thirtyFour.optionB = "Concatenating the fact tables could be a possibility"
    thirtyFour.optionC = "Inner join the fact tables"
    thirtyFour.optionD = "If second fact table has one to one relationship with first facttable and has very few columns, a left join may be done"
    
    thirtyFour.rightAnswer = "Inner join the fact tables"
    thirtyFour.explanation = "Inner join could possibly remove facts from both tables"
    questions.append(thirtyFour)
    
    
    
    //35
    let thirtyFive = Questions()
    thirtyFive.question = "Say you want to award your top 3 sales person out of 10 sales person, then how would you calculate the number of permutation possible?"
    thirtyFive.optionA = "combin(10,3)"
    thirtyFive.optionB = "combin(3,10)"
    thirtyFive.optionC = "permut(10,3)"
    thirtyFive.optionD = "permut(3,10)"
    
    thirtyFive.rightAnswer = "permut(10,3)"
    thirtyFive.explanation = "permut function calculates the permutation"
    questions.append(thirtyFive)
    
    
    //36
    let thirtySix = Questions()
    thirtySix.question = "How is 'Bundle' load helpful?"
    thirtySix.optionA = "Bundle load helps to load JSON files"
    thirtySix.optionB = "Bundle load helps to load images and sound"
    thirtySix.optionC = "Bundle load is used to load Big Data"
    thirtySix.optionD = "Bundle load helps in loading generic data"
    
    thirtySix.rightAnswer = "Bundle load helps to load images and sound"
    thirtySix.explanation = "Same as Correct Option"
    questions.append(thirtySix)
    
    
    
    //37
    let thirtySeven = Questions()
    thirtySeven.question = "Is it possible to have more than one (say two Country and State) reducing field in section access?"
    thirtySeven.optionA = "No it is not allowed"
    thirtySeven.optionB = "It is allowed, add the second field in the section access table as a new column"
    thirtySeven.optionC = "It is allowed, but you will need to create a new reducing field with Country and State field in Section access table"
    thirtySeven.optionD = "It is allowed but create new Section Access table for each reducing fields and concatenate them"
    
    thirtySeven.rightAnswer = "It is allowed, but you will need to create a new reducing field with Country and State field in Section access table"
    thirtySeven.explanation = "Same as Correct Option"
    questions.append(thirtySeven)
    
    
    
    //38
    let thirtyEight = Questions()
    thirtyEight.question = "What is a preceding load?"
    thirtyEight.optionA = "Preceding load creates resident load"
    thirtyEight.optionB = "Preceding load puts data in memory"
    thirtyEight.optionC = "Preceding load command loads from the Select/Load statement below it"
    thirtyEight.optionD = "Preceding loads does load with ADD and REPLACE key words"
    
    thirtyEight.rightAnswer = "Preceding load command loads from the Select/Load statement below it"
    thirtyEight.explanation = "Preceding load allows multiple transformation in a single load and loads from the load statement below it"
    questions.append(thirtyEight)
    
    
    //39
    let thirtyNine = Questions()
    thirtyNine.question = "Our developer created this variables Set vS = '1+1';\nLet vL = vS & + 5;\n, what would the variable vL return?"
    thirtyNine.optionA = "7"
    thirtyNine.optionB = "1+1+5"
    thirtyNine.optionC = "2+5"
    thirtyNine.optionD = "1+15"
    
    thirtyNine.rightAnswer = "1+15"
    thirtyNine.explanation = "In most programming language a string and number cannot be added. Hence in this 5 is converted to a string."
    questions.append(thirtyNine)
    
    
    //40
    let fourty = Questions()
    fourty.question = "In Qliview v12, new structure for Aggr function looks like this?"
    fourty.optionA = "Aggr({SetExpression}[DISTINCT] [NODISTINCT ] expr, StructuredParameter{, StructuredParameter})"
    fourty.optionB = "Aggr({SetExpression}[DISTINCT] [NODISTINCT ] expr, StructuredParameter)"
    fourty.optionC = "Aggr({SetExpression}[DISTINCT] [NODISTINCT ] expr, StructuredParameter{, FieldNames})"
    fourty.optionD = "Aggr({SetExpression} expr, FieldNames)"
    
    fourty.rightAnswer = "Aggr({SetExpression}[DISTINCT] [NODISTINCT ] expr, StructuredParameter{, StructuredParameter})"
    fourty.explanation = "in V12 Aggr function is modified to allow sorting as well. "
    questions.append(fourty)
    
    //41
    let fourtyOne = Questions()
    fourtyOne.question = "In Qliview v12, one important addition has been done? Which of the following?"
    fourtyOne.optionA = "Sorting by Expression"
    fourtyOne.optionB = "Sorting on Aggr virtual table"
    fourtyOne.optionC = "Set Analysis"
    fourtyOne.optionD = "Security tab in Document Properties"
    
    fourtyOne.rightAnswer = "Sorting on Aggr virtual table"
    fourtyOne.explanation = "Same as Correct Option"
    questions.append(fourtyOne)
    
    
    //42
    let fourtyTwo = Questions()
    fourtyTwo.question = "We need to find the current user of the app, how can we find it?"
    fourtyTwo.optionA = "=osuser()"
    fourtyTwo.optionB = "=subfield(osuser(),'\',2)"
    fourtyTwo.optionC = "=right(osuser,6)"
    fourtyTwo.optionD = "=DocumentName()"
    
    fourtyTwo.rightAnswer = "=subfield(osuser(),'\',2)"
    fourtyTwo.explanation = "Same as Correct Option"
    questions.append(fourtyTwo)
    
    
    //43
    let fourtyThree = Questions()
    fourtyThree.question = "What does the following function do\ntext('3.14') ?"
    fourtyThree.optionA = "It will split it into two strings 3 and 14"
    fourtyThree.optionB = "It will force 3.14 as text"
    fourtyThree.optionC = "It will return Three point one four"
    fourtyThree.optionD = "It will round it to 3"
    
    fourtyThree.rightAnswer = "It will force 3.14 as text"
    fourtyThree.explanation = "Same as Correct Option"
    questions.append(fourtyThree)
    
    
    //44
    let fourtyFour = Questions()
    fourtyFour.question = "Which of the following date was considered as first day in number format means as ZERO (0). For example =num(Date('1/1/2017','MM/DD/YYYY')) returns 42736 "
    fourtyFour.optionA = "=num(Date('12/29/1899','DD/MM/YYYY'))"
    fourtyFour.optionB = "=num(Date('12/30/1899','DD/MM/YYYY'))"
    fourtyFour.optionC = "=num(Date('12/31/1899','DD/MM/YYYY'))"
    fourtyFour.optionD = "=num(Date('01/01/1900','DD/MM/YYYY'))"
    
    fourtyFour.rightAnswer = "=num(Date('12/30/1899','DD/MM/YYYY'))"
    fourtyFour.explanation = "12/31/1899 was considered as 1 in number format"
    questions.append(fourtyFour)
    
    //45
    let fourtyFive = Questions()
    fourtyFive.question = "Have you ever faced this error called \"Cannot read BIFF file\", what could be the reason?"
    fourtyFive.optionA = "yes, because Qlikview cannot read BIFF file type"
    fourtyFive.optionB = "yes, because csv files are sometimes forced saved as xls"
    fourtyFive.optionC = "yes, because Qlikview cannot read csv files"
    fourtyFive.optionD = "yes, because Qlikview cannot read xls file"
    
    fourtyFive.rightAnswer = "yes, because csv files are sometimes forced saved as xls"
    fourtyFive.explanation = "Same as Correct Option"
    questions.append(fourtyFive)
    
    
    //46
    let fourtySix = Questions()
    fourtySix.question = "Which of the following options is not available in File Wizard Transform to rotate tables in Qlikview?"
    fourtySix.optionA = "Left"
    fourtySix.optionB = "Right"
    fourtySix.optionC = "Top"
    fourtySix.optionD = "Transpose"
    
    fourtySix.rightAnswer = "Top"
    fourtySix.explanation = "Designers usually rotate tables to make it look better. So we need to counter rotate it"
    questions.append(fourtySix)
    
    
    //47
    let fourtySeven = Questions()
    fourtySeven.question = "When it should be okay to leave synthetic key as it is?"
    fourtySeven.optionA = "When two or more fields connect between tables"
    fourtySeven.optionB = "When synthetic key does correct association among tables"
    fourtySeven.optionC = "When multiple synthetic key tables are present"
    fourtySeven.optionD = "When there is no developers who can remove synthetic key issues"
    
    fourtySeven.rightAnswer = "When synthetic key does correct association among tables"
    fourtySeven.explanation = "When synthetic key does correct association among tables, technically then it is ok"
    questions.append(fourtySeven)
    
    
    //48
    let fourtyEight = Questions()
    fourtyEight.question = "What is subset ratio? "
    fourtyEight.optionA = "Ratio of number of distinct values of a field in a table as compared to total number of distinct values of this field in all tables included"
    fourtyEight.optionB = "Ratio of number of all values of a field in a table as compared to total number of all values of this field in all tables included"
    fourtyEight.optionC = "Ratio of number of distinct values of a field in a table as compared to total number of distinct values of all fields in all tables included"
    fourtyEight.optionD = "Distinct values of a field in a table"
    
    fourtyEight.rightAnswer = "Ratio of number of distinct values of a field in a table as compared to total number of distinct values of this field in all tables included"
    fourtyEight.explanation = "Same as Correct Option"
    questions.append(fourtyEight)
    
    
    //49
    let fourtyNine = Questions()
    fourtyNine.question = "What does NoConcatenate do? "
    fourtyNine.optionA = "NoConcatenate keeps two tables with identical fields as separate"
    fourtyNine.optionB = "NoConcatenate do not allow strings to concatenate"
    fourtyNine.optionC = "NoConcatenate is used when drop table is applied"
    fourtyNine.optionD = "NoConcatenate is used to resolve synthetic keys"
    
    fourtyNine.rightAnswer = "NoConcatenate keeps two tables with identical fields as separate"
    fourtyNine.explanation = "Same as Correct Option"
    questions.append(fourtyNine)
    
    
    //50
    let fifty = Questions()
    fifty.question = "Qlikview Server operates on two authorization modes, what are they?"
    fifty.optionA = "NTLM and Header"
    fifty.optionB = "DMS and NTFS"
    fifty.optionC = "DSC and QDS"
    fifty.optionD = "QVP and QVPX"
    
    fifty.rightAnswer = "DMS and NTFS"
    fifty.explanation = "DMS- Document Metadata Service, and NTFS - New Technology File System"
    questions.append(fifty)
    
    //--------
    
    return questions
    
}
