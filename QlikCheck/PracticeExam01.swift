//
//  Scripts.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 28/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import Foundation

func PracticeExam01() -> [Questions] {
    
    var questions = [Questions]()
    
    // MARK: Questions

    
    let one = Questions()
    one.question = "In Qlikview which term is used to mean to access data in a lower level of a hierarchical data?"
    
    
    one.optionA = "Cyclic Group"
    one.optionB = "Drill Down"
    one.optionC = "Cyclic Expression"
    one.optionD = "Hierarchy Data"
    
    one.rightAnswer = "Drill Down"
    
    one.explanation = "Same as Correct Option"
    
    questions.append(one)
    
    // 2
    let two = Questions()
    two.question = "Given a scenario, you are to design dashboard to support multiple languages,how would you proceed?"
    two.optionA = "Create separate document for each language, and link them using Document Chaining"
    two.optionB = "Create table in datamodel to contain description for each language, and a field available in front-end to select"
    two.optionC = "Create table in datamodel to contain description for each language, and based on IP, language will be selected"
    two.optionD = "Load all data in various languages"
    
    two.rightAnswer = "Create table in datamodel to contain description for each language, and a field available in front-end to select"
    
    two.explanation = "Same as Correct Option"
    
    questions.append(two)
    
    // 3
    let three = Questions()
    three.question = "Given a date field in a data model but there are various formats of the dates, what would you choose to handle such scenario?"
    three.optionA = "Write if-else conditions to handle all case"
    three.optionB = "Use case statements in such scenarios"
    three.optionC = "Qlikview automatically detects such variance of date formats"
    three.optionD = "use Alt function with different Date# function"
    
    three.rightAnswer = "use Alt function with different Date# function"
    
    three.explanation = "Same as Correct Option"
    
    questions.append(three)
    
    // 4
    let four = Questions()
    four.question = "Given a database field name as ID_CAT_NUM_ORD, so you are asked to rename it by one of the following declaration, such that after the declaration line of code for every occurrence of the ID_CAT_NUM_ORD in the data model the fieldname should be renamed to Category_Number?"
    
    four.optionA = "Use RENAME function"
    four.optionB = "Use 'AS' in Every table"
    four.optionC = "Use ALIAS function"
    four.optionD = "Use SubField function"
    
    four.rightAnswer = "Use ALIAS function"
    
    four.explanation = "Same as Correct Option"
    
    questions.append(four)
    
    // 5
    let five = Questions()
    five.question = "Given a scenario where a Cost Center table has Cost Center Code, the company also maintains a lookup excel spreadsheet to match code with center name. Which following technique would you use to populate Cost Center name, and for any missing Cost Center Code, use NA as Cost Center Code?"
    
    five.optionA = "Load the lookup spreadsheet and Perform a left join with the Cost Center table"
    five.optionB = "Load the lookup spreadsheet and Perform a Outer join with the Cost Center table"
    five.optionC = "Load the lookup table as Mapping Load and Use applymap with default value as 'NA'"
    five.optionD = "Load the lookup table and use vLookUp in such scenario"
    
    five.rightAnswer = "Load the lookup table as Mapping Load and Use applymap with default value as 'NA'"
    five.explanation = "Same as Correct Option"
    
    
    questions.append(five)
    
    
    
    //6
    let six = Questions()
    six.question = "An E-commerce company want's to better track their inventory,  but in that data source they are only maintaining current inventory. In such scenario what should the developer do to provide inventory trend over time?"
    six.optionA = "Store periodic snapshot of data and accumulate them in QVDs"
    six.optionB = "Store periodic snapshot of data and accumulate them in QVS"
    six.optionC = "Store periodic snapshot of data in XML format and later retrieve it"
    six.optionD = "Save historical inventory in Excel files"
    
    six.rightAnswer = "Store periodic snapshot of data and accumulate them in QVDs"
    six.explanation = "Same as Correct Option"
    questions.append(six)
    
    
    //7
    let seven = Questions()
    seven.question = "A customer has five tables A, B, C, D and E, Each table has a Date Field. But all dates are not present in all tables. In such scenario how should a developer handle or build the calendar?"
    
    seven.optionA = "Create a Master Calendar to handle all such date issue"
    seven.optionB = "Create unique key for each date in each table and link them to a Master Calendar"
    seven.optionC = "It is easier to define month, year, and other calendar fields in each tables instead of a Master Calendar"
    seven.optionD = "Using the minimum and maximum dates across all tables, create a master calendar. Create a date key and date values in the link table. Create those keys in each tables"
    
    seven.rightAnswer = "Using the minimum and maximum dates across all tables, create a master calendar. Create a date key and date values in the link table. Create those keys in each tables"
    seven.explanation = "Same as Correct Option"
    questions.append(seven)
    
    
    //8
    let eight = Questions()
    eight.question = "In a company the senior Qlikview developer left, and the backend script she created has 30 tabs. It processes 40 million records and now there came an error, so in such scenario how a new developer should debug the issue?"
    
    
    eight.optionA = "Remove all scripts, but current tab and check the bug and repeat"
    eight.optionB = "Use Exit Script at end of each block of code"
    eight.optionC = "In Qlikview Debug mode, use limited load and run the script in animate mode"
    eight.optionD = "In Qlikview Debug mode, run the script in step by step mode"
    
    eight.rightAnswer = "In Qlikview Debug mode, use limited load and run the script in animate mode"
    eight.explanation = "Same as Correct Option"
    questions.append(eight)
    
    
    //9
    let nine = Questions()
    nine.question = "For an online medical store, the CustomerID field in SalesOrder table has 94% subset ratio, versus in the Customer Details Table, the subset ratio of CustomerID is 100% What does this mean?"
    
    nine.optionA = "Customer Details Table contains 100% information about all customers, but only 94% Customer has actually placed an order"
    nine.optionB = "94% of Customers are from Old data and 6% new customers are added in Customer Details table "
    nine.optionC = "94% information of All Customers are maintained"
    nine.optionD = "Out of 100% Customers only 94% Customers records are maintained who placed an order"
    
    nine.rightAnswer = "Customer Details Table contains 100% information about all customers, but only 94% Customer has actually placed an order"
    nine.explanation = "Same as correct option"
    questions.append(nine)
    
    
    //10
    let ten = Questions()
    ten.question = "An Executive Manager needs to analyze PaymentDue in monthly(30 days) interval, which of the following can be used in front end to achieve it?"
    
    ten.optionA = "GroupBy(PaymentDue, 30)"
    ten.optionB = "Aggr(PaymentDue)/30"
    ten.optionC = "PaymentDue/30"
    ten.optionD = "Class(PaymentDue, 30)"
    
    ten.rightAnswer = "Class(PaymentDue, 30)"
    ten.explanation = "Class function is used to create intervals"
    questions.append(ten)
    
    //11
    let eleven = Questions()
    eleven.question = "An Executive Manager needs to deploy Dashboards for tablet devices, which of the following can be used in front end to achieve it\nA: Convert the application to a format supported by Tablet devices\nB: For each type of Device create a new QVW dashboard\nC: While designing dashboard, use appropriate screen resolution\nD: Use Sheet Objects appropriate for Tablet devices?"
    
    eleven.optionA = "A and B"
    eleven.optionB = "B and C"
    eleven.optionC = "C and D"
    eleven.optionD = "All of the Above"
    
    eleven.rightAnswer = "C and D"
    eleven.explanation = "Same as correct option"
    questions.append(eleven)
    
    //12
    let twel = Questions()
    twel.question = "Which chart should a Qlikview Designer use to display data using variable width bars?"
    
    twel.optionA = "Trellis Chart"
    twel.optionB = "Bar Chart"
    twel.optionC = "Mekko Chart"
    twel.optionD = "Scatter Chart"
    
    twel.rightAnswer = "Mekko Chart"
    twel.explanation = "Same as correct option"
    questions.append(twel)
    
    //13
    let thirteen = Questions()
    thirteen.question = "Which chart should a Qlikview Designer use to display data as varying areas?"
    
    thirteen.optionA = "Trellis Chart"
    thirteen.optionB = "Block Chart"
    thirteen.optionC = "Mekko Chart"
    thirteen.optionD = "Scatter Chart"
    
    thirteen.rightAnswer = "Block Chart"
    thirteen.explanation = "Same as Correct Option"
    questions.append(thirteen)
    
    //14
    let fourteen = Questions()
    fourteen.question = "Which chart should a Qlikview Designer use to display third dimension in the form of a small pie charts as Symbols?"
    
    fourteen.optionA = "Trellis Chart"
    fourteen.optionB = "Scatter Chart"
    fourteen.optionC = "Mekko Chart"
    fourteen.optionD = "Grid Chart"
    
    fourteen.rightAnswer = "Grid Chart"
    fourteen.explanation = "Same as Correct Option"
    questions.append(fourteen)
    
    
    //15
    let fixteen = Questions()
    fixteen.question = "Which of the following is NOT Correct about Radar Chart?"
    
    fixteen.optionA = "Radar Charts could be described as Line Charts"
    fixteen.optionB = "Radar Chart can represent both positive and Negative values at one time"
    fixteen.optionC = "An Error Message will be displayed if data contains both positive and negative values"
    fixteen.optionD = "The X-axis in Radar Chart is wrapped around 360 degrees"
    
    fixteen.rightAnswer = "Radar Chart can represent both positive and Negative values at one time"
    fixteen.explanation = "If data contains both positive and negative values, a Radar chart will display an error message"
    questions.append(fixteen)
    
    
    //16
    let sixteen = Questions()
    sixteen.question = "How can a Designer create a live Qlikview Dashboard Analysis on a MS Office PowerPoint Presentation?"
    
    sixteen.optionA = "Open the server document in IE Plugin Mode, Open a MS Office PowerPoint, select a QV sheet object, drag and drop them to the local MS Office PowerPoint Slide"
    sixteen.optionB = "Download the Server document locally, and then drag and drop sheet objects on MS Office PowerPoint Slide"
    sixteen.optionC = "Open the server document, Open a MS Office PowerPoint, drag and drop sheet objects, and then link the objects using PowerPoint tools"
    sixteen.optionD = "The drag and drop features only works with MS Office Word and not with PowerPoint"
    
    sixteen.rightAnswer = "Open the server document in IE Plugin Mode, Open a MS Office PowerPoint, select a QV sheet object, drag and drop them to the local MS Office PowerPoint Slide"
    sixteen.explanation = "Just drag and drop QV sheet objects on MS Office PowerPoint, The sheet object automatically retains the interactivity"
    questions.append(sixteen)
    
    
    //17
    let seventeen = Questions()
    seventeen.question = "Can a Qlikview Developer use Where Clauses, GroupBy Clauses, on binary load Qlikview Files?"
    
    seventeen.optionA = "Yes it is possible"
    seventeen.optionB = "No it is not possible"
    seventeen.optionC = "Yes it is possible with ADD or REPLACE Keywords."
    seventeen.optionD = "Yes it is possible with a Preceding Load"
    
    seventeen.rightAnswer = "No it is not possible"
    seventeen.explanation = "During Binary load not SQL Like syntax is allowed. Hence it is not possible"
    questions.append(seventeen)
    
    
    //18
    let eighteen = Questions()
    eighteen.question = "What could be the reason that sometimes Qlikview doesn't allow to use certain fields in an expression in a chart object?"
    
    eighteen.optionA = "The field is common to more than one internal table"
    eighteen.optionB = "The field might belong to a Data Island table"
    eighteen.optionC = "The field has high cardinal values"
    eighteen.optionD = "The field has low cardinal values"
    
    eighteen.rightAnswer = "The field is common to more than one internal table"
    eighteen.explanation = "Same as correct option"
    questions.append(eighteen)
    
    
    //19
    let nineteen = Questions()
    nineteen.question = "Qlikview sometimes interprets '005', '0005', '02' and '2' as same numerical value during reload, how can they be interpreted as different values?"
    
    nineteen.optionA = "Use KeepChar() function"
    nineteen.optionB = "Use Text() Function"
    nineteen.optionC = "Use Alt() Function"
    nineteen.optionD = "Use PurgeChar() Function"
    
    nineteen.rightAnswer = "Use Text() Function"
    nineteen.explanation = "Text() function will treat each value differently and convert them as text values"
    questions.append(nineteen)
    
    
    //20
    let twenty = Questions()
    twenty.question = "How would you write a Set Expression to get Sales for current selection for Year = 2016, and also include Country = INDIA for all Years in a Chart expression?"
    
    twenty.optionA = "Sum({$<Year={2016}> +1<Country={\"INDIA\"}>}Sales)"
    twenty.optionB = "Sum({1<Year={2016},Country={\"INDIA\"}>}Sales)"
    twenty.optionC = "Sum({$<Year={2016},Country={\"INDIA\"}>}TOTAL Sales)"
    twenty.optionD = "Sum({$<Year={2016}> + <Country={\"INDIA\"}>}Sales)"
    
    twenty.rightAnswer = "Sum({$<Year={2016}> +1<Country={\"INDIA\"}>}Sales)"
    twenty.explanation = "Same as Correct Option"
    questions.append(twenty)
    
    //21
    let twentyone = Questions()
    twentyone.question = "How would you write a Set Expression to get Count of Shipped Items for which OrderStatus is Shipped, but CustomerName is blank in a Text Object?"
    
    twentyone.optionA = "Count({<CustomerName -={\"-\"}, OrderStatus={'Shipped'}>} ShippedID)"
    twentyone.optionB = "Count({<CustomerName =, OrderStatus={'Shipped'}>} ShippedID)"
    twentyone.optionC = "Count({<CustomerName = p({<CustomerName={\"\"}>}), OrderStatus={'Shipped'}>} ShippedID)"
    twentyone.optionD = "Count({<OrderStatus = {'Shipped'}>*1-$<CustomerName = {'*'}>}DISTINCT ShippedID)"
    
    twentyone.rightAnswer = "Count({<OrderStatus = {'Shipped'}>*1-$<CustomerName = {'*'}>}DISTINCT ShippedID)"
    twentyone.explanation = "Same as correct option"
    questions.append(twentyone)
    
    
    //22
    let twentytwo = Questions()
    twentytwo.question = "Can we replace all If-Else statement into Set Expressions?"
    
    twentytwo.optionA = "Not if different conditions are required for different lines of aggregation"
    twentytwo.optionB = "Yes it can be done for all If-Else statements"
    twentytwo.optionC = "Yes, but will be slower if different conditions are required for different lines of aggregation"
    twentytwo.optionD = "Not, in situations where If-Else creates object out of memory error"
    
    twentytwo.rightAnswer = "Not if different conditions are required for different lines of aggregation"
    twentytwo.explanation = "Same as Correct Option"
    questions.append(twentytwo)
    
    
    //23
    let twentythree = Questions()
    twentythree.question = "How would you write a Set Expression to find sum of OverDue Amount of Vendors but excluding all VendorCode which starts with 'EXE' ?"
    
    twentythree.optionA = "sum({<VendorCode -= {\"EXE\"}>} OverDueAmount)"
    twentythree.optionB = "sum({<VendorCode -= {\"EXE*\"}>} OverDueAmount)"
    twentythree.optionC = "sum({<VendorCode = {\"*\"}>} OverDueAmount)"
    twentythree.optionD = "sum({<VendorCode -= {\"EXE?\"}>} OverDueAmount)"
    
    twentythree.rightAnswer = "sum({<VendorCode -= {\"EXE*\"}>} OverDueAmount)"
    twentythree.explanation = "Same as correct option"
    questions.append(twentythree)
    
    
    //24
    let twentyfour = Questions()
    twentyfour.question = "What is the difference between following two set of expressions\nExpr 1: sum({<VendorCode - = {\\\"EXE*\\\"}>} OverDueAmount)\nExpr 2: sum({<VendorCode = - {\"EXE*\"}>} OverDueAmount) ?"
    
    twentyfour.optionA = "Expr 1 removes from Current Selection all VendorCode whose name begins with EXE whereas Expr 2 selects all VendorCode except those which begins with EXE"
    twentyfour.optionB = "Technically Both expression means same, output will be same"
    twentyfour.optionC = "Expr 2 removes from Current Selection all VendorCode whose name begins with EXE whereas Expr 1 selects all VendorCode except those which begins with EXE"
    twentyfour.optionD = "Expr 1 removes all VendorCode whose name begins with EXE whereas Expr 2 selects all VendorCode except those which begins with EXE"
    
    twentyfour.rightAnswer = "Expr 1 removes from Current Selection all VendorCode whose name begins with EXE whereas Expr 2 selects all VendorCode except those which begins with EXE"
    twentyfour.explanation = "Same as Correct Option"
    questions.append(twentyfour)
    
    
    //25
    let twentyFive = Questions()
    twentyFive.question = "In a Set Expression can we use a Variable Dimension(field) name like this: sum( {$ <[$(vDimension)]={\"*\"} >} Amount)?"
    
    twentyFive.optionA = "It is not allowed to have variable Dimension name"
    twentyFive.optionB = "Yes it is allowed"
    twentyFive.optionC = "Only Dimension names with no white spaces are allowed"
    twentyFive.optionD = "Yes it is allowed but only when used with Set Identifier 1"
    
    twentyFive.rightAnswer = "Yes it is allowed"
    twentyFive.explanation = "Same as Correct Option"
    questions.append(twentyFive)
    
    
    //26
    let twentySix = Questions()
    twentySix.question = "Given this following Scenario, after executing the script\nSET mul = '$1*$2*$3'\nLET x = $(mul(7,4,9,2)), then what is the value of x?"
    
    twentySix.optionA = "It is '7*4*9'"
    twentySix.optionB = "It is evaluated to 504"
    twentySix.optionC = "It is evaluated to 252"
    twentySix.optionD = "It will be a string '749'"
    
    twentySix.rightAnswer = "It is evaluated to 252"
    twentySix.explanation = "Same as correct option"
    questions.append(twentySix)
    
    
    //27
    let twentySeven = Questions()
    twentySeven.question = "What is the Qlikview term for situations where three or more tables are directly connected because of one common field name among pair of tables"
    
    
    twentySeven.optionA = "Data Island tables"
    twentySeven.optionB = "Circular Loops"
    twentySeven.optionC = "Link Tables"
    twentySeven.optionD = "Temp Tables"
    
    twentySeven.rightAnswer = "Circular Loops"
    twentySeven.explanation = "Same as correct option"
    questions.append(twentySeven)
    
    
    //28
    let twentyEight = Questions()
    twentyEight.question = "How would you write a set expression to calculate sum of sales for only those years that are selected in BookMark BM09?"
    
    twentyEight.optionA = "Sum({<Year={BM09}>} Sales)"
    twentyEight.optionB = "Sum({<Year=P({BM09} Year)>} Sales)"
    twentyEight.optionC = "Sum({<Year={Year = $(BM09)}>} Sales)"
    twentyEight.optionD = "Sum({<Year=E({BM09} Year)>} Sales)"
    
    twentyEight.rightAnswer = "Sum({<Year=P({BM09} Year)>} Sales)"
    twentyEight.explanation = "Here the set modifiers needed is first find years from BM09 which can be done by P() set."
    questions.append(twentyEight)
    
    //29
    let twentyNine = Questions()
    twentyNine.question = "Which of the following operation causes unoptimized load?"
    
    twentyNine.optionA = "Rename Field using As"
    twentyNine.optionB = "Where clause with a single Exists"
    twentyNine.optionC = "Where Field_XYZ ='Random' clause"
    twentyNine.optionD = "None of the above"
    
    twentyNine.rightAnswer = "Where Field_XYZ ='Random' clause"
    twentyNine.explanation = "Where condition to reduce data will cause unoptimized load. Where clause with Exists is optimized load"
    questions.append(twentyNine)
    
    
    //30
    let thirty = Questions()
    thirty.question = "What is the difference between Peek() and Previous() function?"
    
    thirty.optionA = "Peek() and Previous() both can look into previous records"
    thirty.optionB = "Peek() can be used after data has been loaded into memory whereas Previous() can be only used during loading data"
    thirty.optionC = "Peek() can be used in Chart function as well but Previous() cannot"
    thirty.optionD = "Previous() can be used in Chart function as well but Peek() cannot"
    
    thirty.rightAnswer = "Peek() can be used after data has been loaded into memory whereas Previous() can be only used during loading data"
    thirty.explanation = "Same as Correct Option"
    questions.append(thirty)
    
    
    //31
    let thirtyOne = Questions()
    thirtyOne.question = "An International E-Commerce company wants to show sales figure in both USD and local currencies, How should a developer solve it without having to use additional licenses?"
    
    thirtyOne.optionA = "Create two QVW, one for each currency, and use Document Chaining"
    thirtyOne.optionB = "Create one QVW and add a table with Currency Conversion where USD is the base currency"
    thirtyOne.optionC = "Add additional expressions one for local currency and one with USD"
    thirtyOne.optionD = "Create one QVW and use dual function in all currency field to match USD to Local Currency"
    
    thirtyOne.rightAnswer = "Create one QVW and add a table with Currency Conversion where USD is the base currency"
    thirtyOne.explanation = "Same as Correct Option"
    questions.append(thirtyOne)
    
    
    //32
    let thirtyTwo = Questions()
    thirtyTwo.question = "In a data model which includes data of University Management System, What is the Cardinal Relationship between Students and Courses?"
    thirtyTwo.optionA = "One to One"
    thirtyTwo.optionB = "One to Many"
    thirtyTwo.optionC = "Many to One"
    thirtyTwo.optionD = "Many to Many"
    
    thirtyTwo.rightAnswer = "Many to Many"
    thirtyTwo.explanation = "Because each student can enroll into many courses and one course can be assigned to many students. Hence Many to Many."
    questions.append(thirtyTwo)
    
    
    //33
    let thirtyThree = Questions()
    thirtyThree.question = "In the original data base, the relationship between Product and Product Category field is not defined.  If a Developer has to define it in Qlikview Data Model how can she do so?"
    
    thirtyThree.optionA = "One way is to create a lookup table in a spreadsheet and load using Include statement"
    thirtyThree.optionB = "Using Mapping Load between Product and Product Category this can be achieved"
    thirtyThree.optionC = "Using Dynamic Update a new relationship can be defined using Product and Product Category fields"
    thirtyThree.optionD = "ApplyMap can be used to lookup for Product Category based on Products"
    
    thirtyThree.rightAnswer = "One way is to create a lookup table in a spreadsheet and load using Include statement"
    thirtyThree.explanation = "First thing to be done is build a relationship, hence using a spreadsheet is one option. ApplyMap and MappingLoad won't work yet because the relationship is not defined yet"
    questions.append(thirtyThree)
    
    
    //34
    let thirtyFour = Questions()
    thirtyFour.question = "Set Expression and Aggr function. For a given straight table, say dimensions = Customer, Country and Expression = Sum(Sales)\nCustomer,   Country, Sum(Sales)\nA,  USA, 500\nB, China, 2000\nC, India, 1000\nE, India, 2000\nD, UK, 1500\n\nNow if we add another expression Avg(Total Aggr(Sum({<Country={India}>} Sales), Country)) then what would be the row value for Customer B for this new column"
    
    
    thirtyFour.optionA = "3000"
    thirtyFour.optionB = "500"
    thirtyFour.optionC = "2000"
    thirtyFour.optionD = "1500"
    
    thirtyFour.rightAnswer = "3000"
    thirtyFour.explanation = "Actually all rows of that column will be equal to 3000"
    questions.append(thirtyFour)
    
    
    
    //35
    let thirtyFive = Questions()
    thirtyFive.question = "In Business Intelligence terminology, What is the term for ratio of Accounts Receivables and Total Credit Sales multiplied by 365 days?"
    
    thirtyFive.optionA = "Daily Average Sales (DAS)"
    thirtyFive.optionB = "Day Sales Outstanding (DSO)"
    thirtyFive.optionC = "Sales to Credit Ratio (SCR)"
    thirtyFive.optionD = "Total Revenue Per Year (TRY)"
    
    thirtyFive.rightAnswer = "Day Sales Outstanding (DSO)"
    thirtyFive.explanation = "Same as correct option"
    questions.append(thirtyFive)
    
    
    
    //--------
    
    return questions
    
}
