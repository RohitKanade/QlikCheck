//
//  Scripts.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 28/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import Foundation

func Scripts() -> [Questions] {
    
    var questions = [Questions]()
    
    // MARK: Questions
    
    
    // 1 Which of the following is FALSE about AutoNumber?	AutoNumber takes an expression and return a sequential integer	AutoNumber takes Alphanumeric values and returns an integer	AutoNumber takes a text value and returns an Unique Alpha numeric string	AutoNumber depends on Load order	AutoNumber takes a text value and returns an Unique Alpha numeric string	AutoNumber returns a sequential integer and not a alphanumeric string
    
    let one = Questions()
    one.question = "Say, a qvd contains 5 million records. It has four fields A,B,C and Date. Date has year value from 2012 to 2016.Which of the following statement will use more RAM?\nScenario A: // Loaded all records\nLoad * from data.qvd(qvd);\nScenario B: //Loaded 4 million records\nLoad * from data.qvd (qvd)\nwhere year(Date) > 2012;\n?"
    
    
    one.optionA = "Scenario A will take more RAM"
    one.optionB = "Scenario B will take more RAM"
    one.optionC = "They both will consume equal RAM"
    one.optionD = "None of the above"
    
    one.rightAnswer = "Scenario B will take more RAM"
    
    one.explanation = "The Where clause will cause an unoptimized load. Hence in scenario B will take more RAM."
    
    questions.append(one)
    
    // 2
    let two = Questions()
    two.question = "Is sorting possible while loading a QVD?"
    two.optionA = "Yes it is possible"
    two.optionB = "Yes it is possible only but only for numerical values"
    two.optionC = "No it is not possible while loading a QVD"
    two.optionD = "Yes it is possible but only with Resident Load"
    
    two.rightAnswer = "No it is not possible while loading a QVD"
    
    two.explanation = "Sorting is possible after QVD is loaded, hence will work with Resident load and not while loading"
    
    questions.append(two)
    
    // 3
    let three = Questions()
    three.question = "Which of the following is true about Buffer load if no \"option\" parameter is set?"
    three.optionA = "Buffer load does automatic incremental load"
    three.optionB = "QVD buffer created in the first execution will be continuously used"
    three.optionC = "By default after 7 days, new data will be fetched from the database"
    three.optionD = "Buffer load will not work with \"option\" parameters are set."
    
    three.rightAnswer = "QVD buffer created in the first execution will be continuously used"
    
    three.explanation = "QVD buffer created in the first execution will be continuously used"
    
    questions.append(three)
    
    // 4
    let four = Questions()
    four.question = "Which of the following is the fastest method to find the max value of a field? Say a qvd has 50 million records?"
    four.optionA = "LOAD * FROM (qvd);\nLOAD max(FieldValue(‘Id’, recno())) AUTOGENERATE FieldValueCount(‘Id’);"
    four.optionB = "LOAD DISTINCT Id FROM (qvd);\nLOAD max(FieldValue(‘Id’, recno())) AUTOGENERATE FieldValueCount(‘Id’);"
    four.optionC = "LOAD DISTINCT Id FROM (qvd);\nLOAD max(Id) Resident table;"
    four.optionD = "LOAD Id FROM (qvd);\nLOAD max(FieldValue(‘Id’, recno())) AUTOGENERATE FieldValueCount(‘Id’);"
    
    four.rightAnswer = "LOAD Id FROM (qvd);\nLOAD max(FieldValue(‘Id’, recno())) AUTOGENERATE FieldValueCount(‘Id’);"
    
    four.explanation = "First three options will be slower"
    
    questions.append(four)
    
    // 5
    let five = Questions()
    five.question = "Our client wants to do some dynamic update based on certain condition. So which of the following method allow to implement the dynamic update?"
    five.optionA = "Add a Dynamic Update SQL statement in Back End script"
    five.optionB = "Add a Dynamic Update SQL statement in the expression of a chart"
    five.optionC = "Add an action to a button for Dynamic Update"
    five.optionD = "Dynamic Update is not allowed in Qlikview"
    
    five.rightAnswer = "Add an action to a button for Dynamic Update"
    five.explanation = "An action can be set, such as, in Text object or Button for doing a dynamic update."
    
    
    questions.append(five)
    
    
    
    //6
    let six = Questions()
    six.question = "Which of the following combination of parameters are mandatory for Hierarchy function:\n\nA. NodeID, NodeName, ParentName\nB. NodeID, ParentID, ParentName\nC. ParentID, PathSource, PathName\nD. NodeID, ParentID, PathDelimiter"
    six.optionA = "A"
    six.optionB = "B"
    six.optionC = "C"
    six.optionD = "D"
    
    six.rightAnswer = "A"
    six.explanation = "Option A is correct, rest all parameters are optional"
    questions.append(six)
    
    
    //7
    let seven = Questions()
    seven.question = "Which of the following combination of parameters are mandatory for HierarchyBelongsTo function:\nA. NodeID, ParentID, NodeName, AncestorID, DepthDiff\nB. NodeID, ParentID, NodeName, AncestorID, AncestorName\nC. NodeID, NodeName, AncestorID, AncestorName, DepthDiff\nD. ParentID, NodeName, AncestorID, AncestorName, DepthDiff"
    
    seven.optionA = "A"
    seven.optionB = "B"
    seven.optionC = "C"
    seven.optionD = "D"
    
    seven.rightAnswer = "B"
    seven.explanation = "Option B is correct, only DepthDiff is optional parameter"
    questions.append(seven)
    
    
    //8
    let eight = Questions()
    eight.question = "Given the following scripts, what would be the output result?\n\nTableA:\nLoad * Inline [\nCountry, Sales\nIndia, 5000\nUSA, 7000\nChina, 3000\n];\n\nTableB:\nLoad * Inline [\nCountry, Sales\nJapan, 2500\nUK, 4000\nMexico, 1000\n];\n\nDROP Table TableA;"
    
    
    eight.optionA = "TableA will concatenate with TableB and when drop is called, it will drop both the tables"
    eight.optionB = "TableA will be dropped and only Table B will be loaded"
    eight.optionC = "Because TableA and TableB will be concatenated, hence Drop function will not drop any table"
    eight.optionD = "TableA and TableB will be concatenated and records of Table B will be dropped"
    
    eight.rightAnswer = "TableA will concatenate with TableB and when drop is called, it will drop both the tables"
    eight.explanation = "TableA will concatenate with TableB and when drop is called, it will drop both the tables"
    questions.append(eight)
    
    
    //9
    let nine = Questions()
    nine.question = "In the following two statements:\n\nStatement A:\nLoad FieldA, FieldB, FieldC\nFrom File*.txt (txt, utf8, embedded labels, delimiter is ',', msq);\nStatement B:\nLoad Field1, Field2, Field3\nFrom File?.txt (txt, utf8, embedded labels, delimiter is ',', msq);\nWhat does the * and ? do NOT signify here."
    
    nine.optionA = "* means zero or many characters"
    nine.optionB = "? means only one character "
    nine.optionC = "* and ? both will do wild card search"
    nine.optionD = "Such Dynamic Update is not allowed in Qlikview"
    
    nine.rightAnswer = "Such Dynamic Update is not allowed in Qlikview"
    nine.explanation = "Same as correct option"
    questions.append(nine)
    
    
    //10
    let ten = Questions()
    ten.question = "What does the following syntax do:\nset HidePrefix='%' ;"
    
    ten.optionA = "FieldNames ending with % will be hidden like system fields"
    ten.optionB = "FieldNames starting with % will be hidden like system fields"
    ten.optionC = "Such prefix is used when a field is not to be used in the front end expressions"
    ten.optionD = "Such prefix is used when a field is not to be used in the back end script"
    
    ten.rightAnswer = "FieldNames starting with % will be hidden like system fields"
    ten.explanation = "Same as correct option"
    questions.append(ten)
    
    //11
    let eleven = Questions()
    eleven.question = "In the following syntax\nSubField(text, delimiter[, field_no ]), if optional field_no is not defined then what would happen?"
    
    eleven.optionA = "It's optional it would still give same result"
    eleven.optionB = "Will return one full record for each sub string"
    eleven.optionC = "Original value will be returned"
    eleven.optionD = "Error Occurred"
    
    eleven.rightAnswer = "Will return one full record for each sub string"
    eleven.explanation = "Same as correct option"
    questions.append(eleven)
    
    //12
    let twel = Questions()
    twel.question = "What is the purpose of the Force 32 bit option in Script editor?"
    
    twel.optionA = "It allows Qlikview to run on a 32 bit windows system"
    twel.optionB = "if database vendor has only provided 32 bit drivers than only 32-bit version of Qlikview can connect to it. Hence 32 bit option is also given"
    twel.optionC = "Qlikview can only connect to databases via 32 bit drivers"
    twel.optionD = "Sometimes 64 bit doesn't work so an alternative is given as 32 bit"
    
    twel.rightAnswer = "if database vendor has only provided 32 bit drivers than only 32-bit version of Qlikview can connect to it. Hence 32 bit option is also given"
    twel.explanation = "Same as correct option"
    questions.append(twel)
    
    //13
    let thirteen = Questions()
    thirteen.question = "In the given script, :\n\nData:\nLoad * inline [\nOrderNo, OrderDate, ShippingDate, SalesPrice, Country\nA1, 1/5/2016, 1/5/2016, 1200, India\nA1, 1/11/2016, 1/14/2016, 1000, India\nB1, 1/5/2016, 1/5/2016, 2000, India\nF1, 1/5/2016, 1/5/2016, 3000, India\nC1, 1/6/2016, 1/7/2016, 300, USA\nD1, 1/13/2016, 1/14/2016, 400, UK\nE1, 1/14/2016, 1/14/2016, 500, China\n];\n\nWhat would the following expression return fieldvaluecount('OrderNo')"
    
    thirteen.optionA = "6"
    thirteen.optionB = "7"
    thirteen.optionC = "A1,B1,C1,D1,E1,F1"
    thirteen.optionD = "2"
    
    thirteen.rightAnswer = "6"
    thirteen.explanation = "It returns count of unique values in a field"
    questions.append(thirteen)
    
    //14
    let fourteen = Questions()
    fourteen.question = "What does ScriptError = 2 means?"
   
    fourteen.optionA = "No Error"
    fourteen.optionB = "General Error"
    fourteen.optionC = "Syntax Error"
    fourteen.optionD = "General ODBC error"
    
    fourteen.rightAnswer = "Syntax Error"
    fourteen.explanation = "Same as correct option"
    questions.append(fourteen)
    
    
    //15
    let fixteen = Questions()
    fixteen.question = "What does ScriptError = 8 means?"
    
    fixteen.optionA = "No Error"
    fixteen.optionB = "Syntax Error"
    fixteen.optionC = "Field not found"
    fixteen.optionD = "File Not Found"
    
    fixteen.rightAnswer = "File Not Found"
    fixteen.explanation = "Same as correct option"
    questions.append(fixteen)
    
    
    //16
    let sixteen = Questions()
    sixteen.question = "What does ScriptError = 3 means?"
    
    sixteen.optionA = "No Error"
    sixteen.optionB = "General Error"
    sixteen.optionC = "Syntax Error"
    sixteen.optionD = "ODBC error"
    
    sixteen.rightAnswer = "ODBC error"
    sixteen.explanation = "Same as correct option"
    questions.append(sixteen)
    
    
    //17
    let seventeen = Questions()
    seventeen.question = "What would the following script do?\n\nTemp:\nLoad * Inline [\nMonth, Sales\n1, 100\n2, 120\n3, 240\n4, 360\n5, 480\n6, 600\n];\n\nSales:\nNoConcatenate\nLoad *,\n(Sales - Previous(Sales) )as SalesDifference\nResident Temp where Month > 3;\n\nDrop Table Temp;"
    
    seventeen.optionA = "Finally, It will create a table Sales with 3 records and 3 columns. Last column will contain the difference of sales between current and previous record"
    seventeen.optionB = "Finally, It will create a table Sales with 6 records and 3 columns. Last column will contain the difference of sales between current and previous record"
    seventeen.optionC = "Finally, It will create a table Sales with 9 records."
    seventeen.optionD = "Finally, It will create a table Sales with 3 records and 2 columns. Last column will contain the difference of sales between current and previous record"
    
    seventeen.rightAnswer = "Finally, It will create a table Sales with 3 records and 3 columns. Last column will contain the difference of sales between current and previous record"
    seventeen.explanation = "Same as correct option"
    questions.append(seventeen)
    
    
    //18
    let eighteen = Questions()
    eighteen.question = "What is the difference between Above() and Previous() function?"
    
    eighteen.optionA = "Above is used to fetch records from rows above current row"
    eighteen.optionB = "Previous is also used to fetch records from previous input record"
    eighteen.optionC = "Above is Chart Function whereas Previous is a script function"
    eighteen.optionD = "Above is a Script function and Previous is a Chart function"
    
    eighteen.rightAnswer = "Above is Chart Function whereas Previous is a script function"
    eighteen.explanation = "Same as correct option"
    questions.append(eighteen)
    
    
    //19
    let nineteen = Questions()
    nineteen.question = "What is the difference between Peek() and Previous() function?"
    
    nineteen.optionA = "Peek() and Previous() both can look into previous records"
    nineteen.optionB = "Peek() can be used after data has been loaded into memory whereas Previous() can be only used during loading data"
    nineteen.optionC = "Peek() can be used in Chart function as well but Previous() cannot"
    nineteen.optionD = "Previous() can be used in Chart function as well but Peek() cannot"
    
    nineteen.rightAnswer = "Peek() can be used after data has been loaded into memory whereas Previous() can be only used during loading data"
    nineteen.explanation = "Same as Correct Option"
    questions.append(nineteen)
    
    
    //20
    let twenty = Questions()
    twenty.question = "Which of the following is NOT correct about Section Application?"
    twenty.optionA = "User Authentication"
    twenty.optionB = "User Authorization"
    twenty.optionC = "It links the user credentials with the data model"
    twenty.optionD = "Section Application should be the first line of script in a Qlikview document"
    
    twenty.rightAnswer = "Section Application should be the first line of script in a Qlikview document"
    twenty.explanation = "Same as Correct Option"
    questions.append(twenty)
    
    //21
    let twentyone = Questions()
    twentyone.question = "Which of the following is NOT a functionality of Qlikview publisher?"
    
    twentyone.optionA = "Provide row level security"
    twentyone.optionB = "Remote management services"
    twentyone.optionC = "manage section access from QMC"
    twentyone.optionD = "manages user authentication"
    
    twentyone.rightAnswer = "manages user authentication"
    twentyone.explanation = "Same as correct option"
    questions.append(twentyone)
    
    
    //22
    let twentytwo = Questions()
    twentytwo.question = "Which license allows unlimited access to all documents in one Qlikview Server?\n\nA. Usage CAL\nB. Named CAL\nC. Document CAL\nD. Session CAL"
    
    twentytwo.optionA = "A"
    twentytwo.optionB = "B"
    twentytwo.optionC = "C"
    twentytwo.optionD = "D"
    
    twentytwo.rightAnswer = "B"
    twentytwo.explanation = "Named CAL unofficially known as Developers license, meaning full access"
    questions.append(twentytwo)
    
    
    //23
    let twentythree = Questions()
    twentythree.question = "Which of the following is not correct about Session CAL?"
   
    twentythree.optionA = "It allows multiple users to access multiple documents during one connection"
    twentythree.optionB = "It allows single users to access multiple documents during one connection"
    twentythree.optionC = "It is not tied to a user or machine"
    twentythree.optionD = "User can access documents as long as session is active"
    
    twentythree.rightAnswer = "It allows multiple users to access multiple documents during one connection"
    twentythree.explanation = "Same as correct option"
    questions.append(twentythree)
    
    
    //24
    let twentyfour = Questions()
    twentyfour.question = "In a standalone Qlikview document which of the following is FALSE?"
    
    twentyfour.optionA = "Section Access can do user authentication"
    twentyfour.optionB = "Section Access can do user authorization"
    twentyfour.optionC = "Section Access contains user credentials for access"
    twentyfour.optionD = "Section Access cannot do both authentication and authorization"
    
    twentyfour.rightAnswer = "Section Access cannot do both authentication and authorization"
    twentyfour.explanation = "Same as Correct Option"
    questions.append(twentyfour)
    
    
    //25
    let twentyFive = Questions()
    twentyFive.question = "Which of the following is actually responsible for reloading a Qlikview Document?"
    
    twentyFive.optionA = "Qlikview server"
    twentyFive.optionB = "QVB in Qlikview Publisher"
    twentyFive.optionC = "Qlikview Access Point"
    twentyFive.optionD = "Qlikview Management Console"
    
    twentyFive.rightAnswer = "QVB in Qlikview Publisher"
    twentyFive.explanation = "Same as Correct Option"
    questions.append(twentyFive)
    
    
    //26
    let twentySix = Questions()
    twentySix.question = "What are subroutines?"
   
    twentySix.optionA = "Subroutines are variables used to automate reload incase Qlikserver is absent"
    twentySix.optionB = "Subroutines are user defined reusable function which can be called using CALL method"
    twentySix.optionC = "Subroutines are responsible for Qlikview document reload"
    twentySix.optionD = "Subroutines can reduce reloadtime"
    
    twentySix.rightAnswer = "Subroutines are user defined reusable function which can be called using CALL method"
    twentySix.explanation = "Same as correct option"
    questions.append(twentySix)
    
    
    //27
    let twentySeven = Questions()
    twentySeven.question = "What are container objects in Qlikview Sheet Object?"
    twentySeven.optionA = "Containers are used for multiboxes in Qlikview UI"
    twentySeven.optionB = "Containers are sheet objects used to display different sheet objects within same space"
    twentySeven.optionC = "Container objects are used to display only custom objects"
    twentySeven.optionD = "Container objects are used to display objects controlled by alternate states"
    
    twentySeven.rightAnswer = "Containers are sheet objects used to display different sheet objects within same space"
    twentySeven.explanation = "Same as correct option"
    questions.append(twentySeven)
    
    
    //28
    let twentyEight = Questions()
    twentyEight.question = "What is the purpose of using Qlikview Workbench?"
    
    twentyEight.optionA = "Qlikview Workbench is like Qlikview desktop client used for Qlikview Document development"
    twentyEight.optionB = "Using QV workbench, objects from QV documents can be embedded into Dot Net based web solutions"
    twentyEight.optionC = "Qlikview Workbench is a Qlikview client"
    twentyEight.optionD = "Qlikview Workbench is a plugin to access  Qlikview reports"
    
    twentyEight.rightAnswer = "Using QV workbench, objects from QV documents can be embedded into Dot Net based web solutions"
    twentyEight.explanation = "Same as correct option"
    questions.append(twentyEight)
    
    //29
    let twentyNine = Questions()
    twentyNine.question = "What should one must do before working with section access scripts\n\n**This doesn't have a correct answer, but we think one of them is a good choice?"
    
    twentyNine.optionA = "Section Access should be put in hidden script"
    twentyNine.optionB = "Section Access must be used for user authorization"
    twentyNine.optionC = "Before applying section access, keep a back up of the Qlikview document"
    twentyNine.optionD = "Section Access only must not be used for user authentication"
    
    twentyNine.rightAnswer = "Before applying section access, keep a back up of the Qlikview document"
    twentyNine.explanation = "Section Access script can fail during development and original Qlikview document may not be recovered. Hence keep a back up"
    questions.append(twentyNine)
    
    
    //30
    let thirty = Questions()
    thirty.question = "What does the Strict Exclusion settings do?"
    
    thirty.optionA = "It denies access to users, if data reduction are not matching with values in the data model"
    thirty.optionB = "It denies access to admin users"
    thirty.optionC = "It doesn't deny access to users, if data reduction are not matching with values in the data model"
    thirty.optionD = "It gives all access to admin users"
    
    thirty.rightAnswer = "It denies access to users, if data reduction are not matching with values in the data model"
    thirty.explanation = "Sometimes there could be additional data in data model not defined or restricted in Section Access.                      It will then still deny access to users, if data reduction are not matching with values in the data model"
    questions.append(thirty)
    
    
    //31
    let thirtyOne = Questions()
    thirtyOne.question = "Say app A is imported in App B using Binary load. App A has section access as well as App B. In this scenario which application's section access would be used?"
    thirtyOne.optionA = "Application A will override section access of Application B, as it is being imported using binary load"
    thirtyOne.optionB = "Application B's section access will override section access of Application A"
    thirtyOne.optionC = "Section Access of both App A and App B will be concatenated"
    thirtyOne.optionD = "Section Access of each application will cancel each other"
    
    thirtyOne.rightAnswer = "Application B's section access will override section access of Application A"
    thirtyOne.explanation = "Application B' section access will have higher priority. Section Application cannot co-exist."
    questions.append(thirtyOne)
    
    
    //32
    let thirtyTwo = Questions()
    thirtyTwo.question = "What does OMIT field do in Section Application?"
    thirtyTwo.optionA = "OMIT field is used to remove section application"
    thirtyTwo.optionB = "OMIT field is used to remove fields from a data model for a given user"
    thirtyTwo.optionC = "OMIT fields are not reduced by Section Application"
    thirtyTwo.optionD = "OMIT fields are used as key field to data model"
    
    thirtyTwo.rightAnswer = "OMIT field is used to remove fields from a data model for a given user"
    thirtyTwo.explanation = "Same as correct option"
    questions.append(thirtyTwo)
    
    
    //33
    let thirtyThree = Questions()
    thirtyThree.question = "How would you write a SQL query to find the second highest purchase of a Customer?"
    thirtyThree.optionA = "SQL select max(sales) from customer where sales not in (select max(sales) from customer);"
    thirtyThree.optionB = "SQL select max(sales) from customer where sales < max(sales);"
    thirtyThree.optionC = "SQL select Top 2 sales from customer"
    thirtyThree.optionD = "SQL select max(sales) from customer where sales not in Top 1;"
    
    thirtyThree.rightAnswer = "SQL select max(sales) from customer where sales not in (select max(sales) from customer);"
    thirtyThree.explanation = "Same as Correct Option"
    questions.append(thirtyThree)
    
    
    //34
    let thirtyFour = Questions()
    thirtyFour.question = "How would you write a SQL query to find minimum sales by ProductCategory. Say it is in Product table?"
    thirtyFour.optionA = "SQL select ProductCategory, min(Sales) from Product Group By ProductCategory;"
    thirtyFour.optionB = "SQL select minimum(sales) from Product Group by ProductCategory;"
    thirtyFour.optionC = "SQL select min(sales) Group by ProductCategory from Product;"
    thirtyFour.optionD = "SQL select min(sales), ProductCategory from Product where sales =min(sales);"
    
    thirtyFour.rightAnswer = "SQL select ProductCategory, min(Sales) from Product Group By ProductCategory;"
    thirtyFour.explanation = "Same as correct option"
    questions.append(thirtyFour)
    
    
    
    //35
    let thirtyFive = Questions()
    thirtyFive.question = "How would you write a SQL query to find maximum sales by ProductCategory. Say it is in Product table?"
    thirtyFive.optionA = "SQL select ProductCategory, max(Sales) from Product Group By ProductCategory;"
    thirtyFive.optionB = "SQL select max(sales) from Product Group by ProductCategory;"
    thirtyFive.optionC = "SQL select max(sales) Group by ProductCategory from Product;"
    thirtyFive.optionD = "SQL select max(sales), ProductCategory from Product where sales =max(sales);"
    
    thirtyFive.rightAnswer = "SQL select ProductCategory, max(Sales) from Product Group By ProductCategory;"
    thirtyFive.explanation = "Same as correct option"
    questions.append(thirtyFive)
    
    
    //36
    let thirtySix = Questions()
    thirtySix.question = "As a developer, what would you suggest NOT to do with TimeStamps if time is not important for the QV dashboard?"
   
    thirtySix.optionA = "Split time stamp into date and time fields (when both date and time is required)"
    thirtySix.optionB = "Using Floor function remove the time stamp"
    thirtySix.optionC = "Keep Timestamps as it is. It doesn't cause any performance issues"
    thirtySix.optionD = "Use date(date#(datefield)) to remove time stamp"
    
    thirtySix.rightAnswer = "Keep Timestamps as it is. It doesn't cause any performance issues"
    thirtySix.explanation = "Same as Correct Option"
    questions.append(thirtySix)
    
    
    
    //37
    let thirtySeven = Questions()
    thirtySeven.question = "Write a SQL query to fetch Customer and Sales column from CustomerTable where Sales are greater than Average sales?"
    
    thirtySeven.optionA = "SQL Select Customer, Sales from CustomerTable where Sales > Select Avg(Sales) from CustomerTable"
    thirtySeven.optionB = "SQL Select Customer, Avg(Sales) from CustomerTable where Sales > Select Avg(Sales) from CustomerTable"
    thirtySeven.optionC = "SQL Select Customer, Sales from CustomerTable where Sales > Avg(Sales)"
    thirtySeven.optionD = "SQL Select Customer, Sales from CustomerTable where Avg(Sales) > Sales"
    
    thirtySeven.rightAnswer = "SQL Select Customer, Sales from CustomerTable where Sales > Select Avg(Sales) from CustomerTable"
    thirtySeven.explanation = "Same as Correct Option"
    questions.append(thirtySeven)
    
    
    
    //38
    let thirtyEight = Questions()
    thirtyEight.question = "Our developer wrote a section access table to restrict users which looks like this, but it is failing.\n\nUserId, Password\nUSER1, PWD1\nUSER2, PWD2\nADMIN, ADMIN "
   
    thirtyEight.optionA = "UserId and Password both cannot have same values"
    thirtyEight.optionB = "UserId and Password fields both should be in Upper case"
    thirtyEight.optionC = "UserId and Password fields both should be in lower case"
    thirtyEight.optionD = "ADMIN records should be in first row and then user row"
    
    thirtyEight.rightAnswer = "UserId and Password fields both should be in Upper case"
    thirtyEight.explanation = "It is a good idea to use Upper() function to upper case all Section Access fields when working with section access on external data. Doesn't matter if it is Inline load"
    questions.append(thirtyEight)
    
    
    //39
    let thirtyNine = Questions()
    thirtyNine.question = "If you want the users to be logged in from a specific machine associated with the domain then which of the following fields should be set in Section Access?"
    
    thirtyNine.optionA = "ACCESS"
    thirtyNine.optionB = "NTNAME"
    thirtyNine.optionC = "SERIAL"
    thirtyNine.optionD = "NTSID"
    
    thirtyNine.rightAnswer = "NTSID"
    thirtyNine.explanation = "Same as correct option"
    questions.append(thirtyNine)
    
    
    //40
    let fourty = Questions()
    fourty.question = "If you add =sum(sales) > 50000 what would it return"
    
    fourty.optionA = "It will return sum(sales) for values greater than 50000"
    fourty.optionB = "It will return Boolean -1 for true condition and 0 otherwise"
    fourty.optionC = "It will return Boolean False or True"
    fourty.optionD = "It will return Boolean 1 wherever the condition is true"
    
    fourty.rightAnswer = "It will return Boolean -1 for true condition and 0 otherwise"
    fourty.explanation = "Same as correct option"
    questions.append(fourty)
    
 
    //41
    let fourtyOne = Questions()
    fourtyOne.question = "Which of the following module does the \" Loop and Reduce\" ?"
    
    fourtyOne.optionA = "Qlikview Management Console"
    fourtyOne.optionB = "Qlikview Publisher"
    fourtyOne.optionC = "Qlikview Server"
    fourtyOne.optionD = "Qlikview Access Point"
    
    fourtyOne.rightAnswer = "Qlikview Publisher"
    fourtyOne.explanation = "Same as Correct Option"
    questions.append(fourtyOne)
    
    
    //42
    let fourtyTwo = Questions()
    fourtyTwo.question = "As a developer you want to quickly check your script/syntax by reloading with few number of records, which of the following option would you choose?"
   
    fourtyTwo.optionA = "First 1000"
    fourtyTwo.optionB = "Partial Reload"
    fourtyTwo.optionC = "Limited Load"
    fourtyTwo.optionD = "Buffer Load"
    
    fourtyTwo.rightAnswer = "Limited Load"
    fourtyTwo.explanation = "Same as Correct Option"
    questions.append(fourtyTwo)
    
    
    //43
    let fourtyThree = Questions()
    fourtyThree.question = "Which of the following, a Qlikview Web server doesn't do?"
    fourtyThree.optionA = "Hosts the Qlikview Access Point"
    fourtyThree.optionB = "Load Balancing"
    fourtyThree.optionC = "User Authentication"
    fourtyThree.optionD = "By default Qlikview web server is installed"
    
    fourtyThree.rightAnswer = "User Authentication"
    fourtyThree.explanation = "It doesn't do authentication. It just facilitates, DSC does the authentication"
    questions.append(fourtyThree)
    
    
    //44
    let fourtyFour = Questions()
    fourtyFour.question = "Which of the following is not a method of Qlikview authentication?"
    
    fourtyFour.optionA = "NTLM"
    fourtyFour.optionB = "Header"
    fourtyFour.optionC = "Custom"
    fourtyFour.optionD = "DMS"
    
    fourtyFour.rightAnswer = "DMS"
    fourtyFour.explanation = "DMS is a method of Authorization, not authentication"
    questions.append(fourtyFour)
    
    //45
    let fourtyFive = Questions()
    fourtyFive.question = "Which of the following is NOT correct between Star Schema and Single table model?"
    
    fourtyFive.optionA = "Single Table has better Response time than Star Schema"
    fourtyFive.optionB = "Single Table consumes less RAM than Star Schema"
    fourtyFive.optionC = "Star Schema has less Script run time versus Single Table"
    fourtyFive.optionD = "Both has fairly complex load script"
    
    fourtyFive.rightAnswer = "Single Table consumes less RAM than Star Schema"
    fourtyFive.explanation = "Single Table consumes MORE RAM than Star Schema"
    questions.append(fourtyFive)
    
    
    //46
    let fourtySix = Questions()
    fourtySix.question = "Which of the following is NOT correct between Star Schema and Snow Flake schema"
    
    fourtySix.optionA = "Star Schema has better Response time than Snow Flake"
    fourtySix.optionB = "Star Schema is more flexible model than Snow Flake"
    fourtySix.optionC = "Snow Flake has better script run time versus Star Schema"
    fourtySix.optionD = "Snow Flake has more complexity in script compared to Star schema"
    
    fourtySix.rightAnswer = "Snow Flake has better script run time versus Star Schema"
    fourtySix.explanation = "Overall star schema is a better model"
    questions.append(fourtySix)
    
    
    //47
    let fourtySeven = Questions()
    fourtySeven.question = "Which of the following load can be used for Having Clause similar to SQL syntax?"
    
    fourtySeven.optionA = "BUNDLE LOAD"
    fourtySeven.optionB = "PRECEDING LOAD"
    fourtySeven.optionC = "PARTIAL LOAD"
    fourtySeven.optionD = "LIMITED LOAD"
    
    fourtySeven.rightAnswer = "PRECEDING LOAD"
    fourtySeven.explanation = "Using preceding load, a similar to having clause can be built"
    questions.append(fourtySeven)
    
    
    //48
    let fourtyEight = Questions()
    fourtyEight.question = "Why are alternate states used in Qlikview reporting? "
    
    fourtyEight.optionA = "For Trend Analysis"
    fourtyEight.optionB = "For Statistical Analysis"
    fourtyEight.optionC = "For Time Series Analysis"
    fourtyEight.optionD = "For Comparative Analysis"
    
    fourtyEight.rightAnswer = "For Comparative Analysis"
    fourtyEight.explanation = "Same as Correct Option"
    questions.append(fourtyEight)
    
    
    //49
    let fourtyNine = Questions()
    fourtyNine.question = "What are Document CALs? "
   
    fourtyNine.optionA = "Document CALs allows one user to access any number of application"
    fourtyNine.optionB = "Document CALs allows one user to access any number of application per 60 minutes daily"
    fourtyNine.optionC = "Document CALs allows one user to access one application any number of time"
    fourtyNine.optionD = "Document CALs allows one user to access many application for total 60 minutes in 28 days"
    
    fourtyNine.rightAnswer = "Document CALs allows one user to access one application any number of time"
    fourtyNine.explanation = "Same as Correct Option"
    questions.append(fourtyNine)
    
    
    //50
    let fifty = Questions()
    fifty.question = "What does this expression return: Exists(Company_Name, 'Eztia') ? "
    fifty.optionA = "If 'Eztia' value is present in Company_Name, then it returns the text 'Eztia'"
    fifty.optionB = "If 'Eztia' value is present in Company_Name, then it returns 'True' else NULL"
    fifty.optionC = "If 'Eztia' value is present in Company_Name, then it return -1 else will return 0"
    fifty.optionD = "If 'Eztia' value is present in Company_Name, then it return True else will return False"
    
    fifty.rightAnswer = "If 'Eztia' value is present in Company_Name, then it return -1 else will return 0"
    fifty.explanation = "Exists function determines whether a field value has been loaded into the field or not"
    questions.append(fifty)
    
    
    //51
    let fiftyOne = Questions()
    fiftyOne.question = "Our Developer has created some Macro but those are available only in back end script, can we some how use them in expressions in charts and graphs?"
    fiftyOne.optionA = "No, Macros are only used in scripts"
    fiftyOne.optionB = "Yes by using CALL function in Expression"
    fiftyOne.optionC = "We can go to Help > About Qlikview > Right Click on Qlik Logo > Set 'AllowMacroFunctionInExpressions' from 0 to 1"
    fiftyOne.optionD = "We can go to Help > About Qlikview > Right Click on Qlik Logo > Set 'AllowMacroFunctionInExpressions' from 1 to 0"
    
    fiftyOne.rightAnswer = "We can go to Help > About Qlikview > Right Click on Qlik Logo > Set 'AllowMacroFunctionInExpressions' from 0 to 1"
    fiftyOne.explanation = "By setting 'AllowMacroFunctionInExpressions' to 1, Macro can be used in UI in charts and graphs"
    questions.append(fiftyOne)
    
    //--------
    
    return questions
    
}
