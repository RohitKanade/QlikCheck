//
//  QlikFunctions.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 28/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//



import Foundation

func QlikFunctions() -> [Questions] {
    
    var questions = [Questions]()
    
    // MARK: Questions
    
    let one = Questions()
    one.question = "What will the following expression return\nwildmatch( M, 'jo*','fe?','Ezt') if M = John ?"
    
    
    one.optionA = "Return 'John'"
    one.optionB = "Return 'john'"
    one.optionC = "Return 1"
    one.optionD = "None of the above"
    
    one.rightAnswer = "Return 1"
    
    one.explanation = "Wildmatch does a case insensitive match and returns the number of the expression that matches"
    
    questions.append(one)
    
    // 2
    let two = Questions()
    two.question = "What would be the equivalent value for this statement\nTime#('09','hh')-Time#('02','hh') ?"
    two.optionA = "0.29166666666667"
    two.optionB = "7:00:00 AM"
    two.optionC = "Time#('07','hh')"
    two.optionD = "Error Occurred"
    
    two.rightAnswer = "0.29166666666667"
    
    two.explanation = "It evaluates to 0.29166666666667"
    
    questions.append(two)
    
    // 3
    let three = Questions()
    three.question = "For this number format,\n\n#,##0;-#,##0;–\nWhat does the above format signify?"
    three.optionA = "Positive; Negative; Zero"
    three.optionB = "Positive; Negative; Blank"
    three.optionC = "Positive; Negative; Null"
    three.optionD = "None of the above"
    
    three.rightAnswer = "Positive; Negative; Zero"
    
    three.explanation = "Zero is represented as a double hyphen."
    
    questions.append(three)
    
    // 4
    let four = Questions()
    four.question = "From the caption tab we can change the width and height of the Chart Object. But which keyboard shortcut helps to change the height and width of the Chart itself?"
    
    four.optionA = "Click on the chart and press Alt + Shift"
    four.optionB = "Click on the chart and press Ctrl + Shift"
    four.optionC = "Click on the chart and press Tab + Shift"
    four.optionD = "None of the above"
    
    four.rightAnswer = "Click on the chart and press Ctrl + Shift"
    
    four.explanation = "Same as Correct Option"
    
    questions.append(four)
    
    // 5
    let five = Questions()
    five.question = "In a bar chart, in order to NOT let Qlikview choose some random starting point for the bars, which of the following should be checked?"
    
    five.optionA = "Check the Reverse Stagger box in Axes tab"
    five.optionB = "Check the enable X-axis bar in Presentation tab"
    five.optionC = "Set width to 0 in the axes tab for primary dimension"
    five.optionD = "Check the Forced 0 in axes tab"
    
    five.rightAnswer = "Check the Forced 0 in axes tab"
    five.explanation = "If not forced 0, Qlikview will take an arbitrary starting point."
    
    
    questions.append(five)
    
    
    
    //6
    let six = Questions()
    six.question = "What does the \"Only\" function return when used in a Chart expression?"
    six.optionA = "Only returns a value when there is one and only one possible value in the aggregated data"
    six.optionB = "Only returns a value when there is one and only one possible value in the field with which it is used"
    six.optionC = "Only returns all values in a field when there is only one field  used in the set analysis expression"
    six.optionD = "Only returns only the common values in the fields used in the set analysis"
    
    six.rightAnswer = "Only returns a value when there is one and only one possible value in the aggregated data"
    six.explanation = "Only returns a value when there is one and only one possible value in the aggregated data"
    questions.append(six)
    
    
    //7
    let seven = Questions()
    seven.question = "What does the \"Previous\" function return when used in a Chart expression?"
    
    seven.optionA = "Previous returns a value when there is one and only one possible value in the aggregated data"
    seven.optionB = "Previous is a script function not a chart function"
    seven.optionC = "Peek can be used in lieu of Previous in chart function"
    seven.optionD = "Previous returns value from previous expression column"
    
    seven.rightAnswer = "Previous is a script function not a chart function"
    seven.explanation = "Previous cannot be used in Chart function"
    questions.append(seven)
    
    
    //8
    let eight = Questions()
    eight.question = "Given the following expression what would the pick function return?\nSay, sum({<Year={2016}>} Sales) = 2,000,000 and\nCount({<Year={2016}>} Distinct Customer) = 5,000\n\n=pick (2, sum({<Year={2016}>} Sales), Count({<Year={2016}>} Distinct Customer))"
    
    
    eight.optionA = "The pick function returns 2000000"
    eight.optionB = "The pick function returns 5000"
    eight.optionC = "sum({<Year={2016}>} Sales)"
    eight.optionD = "Count({<Year={2016}>} Distinct Customer)"
    
    eight.rightAnswer = "The pick function returns 5000"
    eight.explanation = "Pick function sometimes used instead of if-else. Depending on first parameter, it picks that number expression"
    questions.append(eight)
    
    
    //9
    let nine = Questions()
    nine.question = "Which of the following needs to be unchecked to create a horizontal list box?"
    
    nine.optionA = "Uncheck the Order by Column box in Presentation tab"
    nine.optionB = "Uncheck the Fixed number of columns box in Presentation tab"
    nine.optionC = "Check the Fixed Number of Columns box"
    nine.optionD = "Uncheck Single Column in Presentation Tab"
    
    nine.rightAnswer = "Uncheck Single Column in Presentation Tab"
    nine.explanation = "Same as correct option"
    questions.append(nine)
    
    
    //10
    let ten = Questions()
    ten.question = "One of our table has 100's of fields in it and in Set Expression we would like to ignore all field selection from that table. Which of the following expression do you think should work? The expression should calculate sum of sales for selected Country field. It should ignore all other fields in that table"
    
    ten.optionA = "sum({<Address=>}SalesAmount)"
    ten.optionB = "sum({$<[$(=Concat({1<$Field = {'Country'}>}distinct $Field,']=,[')&']=')>} Sales)"
    ten.optionC = "sum({$<[$(=Concat({1<$Field-={'Country'}>}distinct $Field,']=,[')&']=')>} Sales)"
    ten.optionD = "sum({<$Field = {'Country'}>}SalesAmount)"
    
    ten.rightAnswer = "sum({$<[$(=Concat({1<$Field-={'Country'}>}distinct $Field,']=,[')&']=')>} Sales)"
    ten.explanation = "Same as correct option. Pay attention to the -="
    questions.append(ten)
    
    //11
    let eleven = Questions()
    eleven.question = "One of our developers used rank option with FirstSortedValue function, now there are 5 matching result for same rank so what should be the return value of FirstSortedValue function?"
    
    eleven.optionA = "FirstSortedValue will return 5 values"
    eleven.optionB = "FirstSortedValue will return the largest value when there are more value matched for a weighted rank"
    eleven.optionC = "FirstSortedValue will return Null in such scenario"
    eleven.optionD = "FirstSortedValue will return the first value out of five matching result"
    
    eleven.rightAnswer = "FirstSortedValue will return Null in such scenario"
    eleven.explanation = "Same as correct option. By using a distinct with FirstSortedValue such null situations can be avoided"
    questions.append(eleven)
    
    //12
    let twel = Questions()
    twel.question = "What will the following function return?\nclass( 32,10,'x',5 )"
    
    twel.optionA = "It returns a textual value 22<=x<=32"
    twel.optionB = "It returns a textual value 22<=x<=37"
    twel.optionC = "It returns a textual value 25<=x<35"
    twel.optionD = "It returns a textual value of 32<=x<=47"
    
    twel.rightAnswer = "It returns a textual value 25<=x<35"
    twel.explanation = "Same as correct option"
    questions.append(twel)
    
    //13
    let thirteen = Questions()
    thirteen.question = "What will the following function return?\nInterval( A )  where A=0.500"
    
    thirteen.optionA = "It returns 12:00:00 PM"
    thirteen.optionB = "It returns 12:00:00 AM"
    thirteen.optionC = "It returns 00:30:00"
    thirteen.optionD = "0 12:00"
    
    thirteen.rightAnswer = "It returns 12:00:00 PM"
    thirteen.explanation = "It returns 12:00:00 PM"
    questions.append(thirteen)
    
    //14
    let fourteen = Questions()
    fourteen.question = "If in business data there are multiple fact tables with mostly different fields and only  few same field with different granularity, which of the following is a better option to handle multiple fact table scenario"
    
    fourteen.optionA = "Concatenating the Tables is good approach in this scenario"
    fourteen.optionB = "Joining the tables based on composite key"
    fourteen.optionC = "Using LinkTables between the fact tables"
    fourteen.optionD = "Treating one of the fact table as a dimension table"
    
    fourteen.rightAnswer = "Using LinkTables between the fact tables"
    fourteen.explanation = "Using LinkTables between the fact tables"
    questions.append(fourteen)
    
    
    //15
    let fixteen = Questions()
    fixteen.question = "In External Action Type (available in Button, Text Objects etc) > Open Qlikview Document what does checking the Transfer State option do?"
    
    fixteen.optionA = "The transfer state passes the Alternate State level, the user selections and the bookmarks"
    fixteen.optionB = "The transfer state just passes the current selection and bookmarks"
    fixteen.optionC = "The transfer state just passes the current selection"
    fixteen.optionD = "The transfer state just passes the Select In Field values"
    
    fixteen.rightAnswer = "The transfer state just passes the current selection"
    fixteen.explanation = "The transfer state just passes the current selection and no other parameters to the new document, so conformed dimensions are required"
    questions.append(fixteen)
    
    
    //16
    let sixteen = Questions()
    sixteen.question = "In order to show hierarchy as tree view in listbox which of the following attribute of Hierarchy function is used?"
    
    sixteen.optionA = "NodeID"
    sixteen.optionB = "ParentID"
    sixteen.optionC = "PathName"
    sixteen.optionD = "PathSource"
    
    sixteen.rightAnswer = "PathName"
    sixteen.explanation = "Same as Correct Option"
    questions.append(sixteen)
    
    
    //17
    let seventeen = Questions()
    seventeen.question = "For a given straight table, say dimension= Customer and Expression = Sum(Sales)\n\nCustomer,   Sum(Sales)\nA,  500\nB, 2000\nC, 1000\nD, 1500\n\nNow if we add another expression Above(Sum(Sales)) then what would be the row value for Customer D for this new column?"
    
    seventeen.optionA = "1500"
    seventeen.optionB = "1000"
    seventeen.optionC = "2000"
    seventeen.optionD = "500"
    
    seventeen.rightAnswer = "1000"
    seventeen.explanation = "Above by default takes value from directly one row above"
    questions.append(seventeen)
    
    
    //18
    let eighteen = Questions()
    eighteen.question = "For a given straight table, say dimension= Customer and Expression = Sum(Sales)\n\nCustomer,   Sum(Sales)\n +\nA,  500\nB, 2000\nC, 1000\nD, 1500\n\nNow if we add another expression Above(Sum(Sales),2) then what would be the row value for Customer D for this new column"
    
    eighteen.optionA = "2000"
    eighteen.optionB = "1000"
    eighteen.optionC = "500"
    eighteen.optionD = "1500"
    
    eighteen.rightAnswer = "2000"
    eighteen.explanation = "Offset is 2 hence second row from current record"
    questions.append(eighteen)
    
    
    //19
    let nineteen = Questions()
    nineteen.question = "Which of the following statement is NOT correct?\n\nA. Top, Below, Above and Bottom function are dependent on number of dimension in the chart.\nB. Top, Below, Above and Bottom function are  not dependent on number of dimension in the chart.\nC. Above function return a row above the current row by default. It can be controlled used offset.\nD. All statements are correct"
    
    nineteen.optionA = "A"
    nineteen.optionB = "B"
    nineteen.optionC = "C"
    nineteen.optionD = "D"
    
    nineteen.rightAnswer = "B"
    nineteen.explanation = "All those functions are actually dependent on number of dimension in the chart."
    questions.append(nineteen)
    
    
    //20
    let twenty = Questions()
    twenty.question = "For a given straight table, say dimension= Customer and Expression = Sum(Sales)\n\nCustomer,   Sum(Sales)\nA,  500\nB, 2000\nC, 1000\nD, 1500\n\nNow if we add another expression Above(Sum(Sales),0,2) then what would be the row value for Customer D for this new column"
    
    twenty.optionA = "1500"
    twenty.optionB = "2000"
    twenty.optionC = "500"
    twenty.optionD = "1000"
    
    twenty.rightAnswer = "1500"
    twenty.explanation = "It actually returns the original value. And such range is usually taken care by RangeSum(Above(Sum(Sales),0,2))"
    questions.append(twenty)
    
    //21
    let twentyone = Questions()
    twentyone.question = "For a given straight table, say dimension= Customer and Expression = Sum(Sales)\n\nCustomer,   Sum(Sales)\nA,  500\nB, 2000\nC, 1000\nD, 1500\n\nNow if we add another expression RangeSum(Above(Sum(Sales),0,2)) then what would be the row value for Customer D for this new column"
    
    twentyone.optionA = "3000"
    twentyone.optionB = "2500"
    twentyone.optionC = "1500"
    twentyone.optionD = "1000"
    
    twentyone.rightAnswer = "2500"
    twentyone.explanation = "It takes current row and one row above for each current record"
    questions.append(twentyone)
    
    
    //22
    let twentytwo = Questions()
    twentytwo.question = "For a given straight table, say dimension= Customer and Expression = Sum(Sales)\n\nCustomer,   Sum(Sales)\nA,  500\nB, 2000\nC, 1000\nD, 1500\n\nNow if we add another expression Sum(TOTAL Sales) then what would be the row value for Customer C for this new column"
    
    twentytwo.optionA = "1000"
    twentytwo.optionB = "4000"
    twentytwo.optionC = "5000"
    twentytwo.optionD = "3000"
    
    twentytwo.rightAnswer = "5000"
    twentytwo.explanation = "TOTAL qualifier takes total of the whole chart ignoring the dimension"
    questions.append(twentytwo)
    
    
    //23
    let twentythree = Questions()
    twentythree.question = "For a given straight table, say dimensions = Customer, Country and Expression = Sum(Sales)\n\nCustomer,   Country, Sum(Sales)\nA,  USA, 500\nB, China, 2000\nC, India, 1000\nE, India, 2000\nD, UK, 1500\nNow if we add another expression Sum(Sales)/sum(TOTAL <Country> Sales) then what would be the row value for Customer C for this new column"
    
    twentythree.optionA = "67%"
    twentythree.optionB = "33%"
    twentythree.optionC = "16.70%"
    twentythree.optionD = "20%"
    
    twentythree.rightAnswer = "33%"
    twentythree.explanation = "For Country India, Customer C the value is 1000/3000"
    questions.append(twentythree)
    
    
    //24
    let twentyfour = Questions()
    twentyfour.question = "For a given straight table, say dimensions = Customer, Country and Expression = Sum(Sales)\nCustomer,   Country, Sum(Sales)\nA,  USA, 500\nB, China, 2000\nC, India, 1000\nE, India, 2000\nD, UK, 1500\n\nNow if we add another expression Aggr(sum(Sales), Country) then what would be the row value for Customer C for this new column"
    
    twentyfour.optionA = "2000"
    twentyfour.optionB = "500"
    twentyfour.optionC = "3000"
    twentyfour.optionD = "1000"
    
    twentyfour.rightAnswer = "3000"
    twentyfour.explanation = "Same as Correct Option"
    questions.append(twentyfour)
    
    
    //25
    let twentyFive = Questions()
    twentyFive.question = "For a given STRAIGHT table, say dimension= Customer and Expression = Sum(Sales)\n\nCustomer,   Sum(Sales)\nA,  500\nB, 2000\nC, 1000\nD, 1500\n\nNow if we add another expression Before(sum(Sales)) then what would be the row value for Customer B for this column"
    
    twentyFive.optionA = "500"
    twentyFive.optionB = "2000"
    twentyFive.optionC = "3000"
    twentyFive.optionD = "NULL"
    
    twentyFive.rightAnswer = "NULL"
    twentyFive.explanation = "Before returns null if used in any other chart apart from Pivot Table"
    questions.append(twentyFive)
    
    
    //26
    let twentySix = Questions()
    twentySix.question = "For a given straight table, say dimensions = Customer, Country and Expression = Sum(Sales)\n\nCustomer,   Country, Sum(Sales)\nA,  USA, 500\nB, China, 2000\nC, India, 1000\nE, India, 2000\nD, UK, 1500\n\nNow if we add another expression Aggr(sum(Sales), Country) then what would be the row value for Customer E for this new column"
    
    twentySix.optionA = "500"
    twentySix.optionB = "2000"
    twentySix.optionC = "3000"
    twentySix.optionD = "NULL"
    
    twentySix.rightAnswer = "NULL"
    twentySix.explanation = "NULL"
    questions.append(twentySix)
    
    
    //27
    let twentySeven = Questions()
    twentySeven.question = "Set Expression and Aggr function. For a given straight table, say dimensions = Customer, Country and Expression = Sum(Sales)\n\nCustomer,   Country, Sum(Sales)\nA,  USA, 500\nB, China, 2000\nC, India, 1000\nE, India, 2000\nD, UK, 1500\n\nNow if we add another expression Avg(Total Aggr(Sum({<Country={India}>} SalesPrice), Country)) then what would be the row value for Customer B for this new column"
    
    twentySeven.optionA = "3000"
    twentySeven.optionB = "500"
    twentySeven.optionC = "2000"
    twentySeven.optionD = "1500"
    
    twentySeven.rightAnswer = "3000"
    twentySeven.explanation = "Actually all rows of that column will be equal to 3000"
    questions.append(twentySeven)
    
    
    //28
    let twentyEight = Questions()
    twentyEight.question = "What does the following expression do?\n\nalt(Actual,0) + alt(Budget,0)"
    
    twentyEight.optionA = "The expression makes all values in Actual and Budget as 0"
    twentyEight.optionB = "The expression adds the fields Actual and Budget, replacing any Null with a 0"
    twentyEight.optionC = "The expression adds two fields Actual and Budget with all values 0"
    twentyEight.optionD = "The expression add values from Actual and Budget field"
    
    twentyEight.rightAnswer = "The expression adds the fields Actual and Budget, replacing any Null with a 0"
    twentyEight.explanation = "Same as correct option"
    questions.append(twentyEight)
    
    //29
    let twentyNine = Questions()
    twentyNine.question = "Which of the following statement is FALSE?\n\nA. ErrorMode = 0, Qlikview will ignore all errors and continue with next scripts.\nB. ErrorMode = 1, Qlikview will halt and prompt for user action\nC. ErrorMode = 2, In case of any error, Qlikview script will fail.\nD. ErrorMode = 3, In case of any error, Qlikview script will fail and revert to last correct changes."
    
    twentyNine.optionA = "A"
    twentyNine.optionB = "B"
    twentyNine.optionC = "C"
    twentyNine.optionD = "D"
    
    twentyNine.rightAnswer = "D"
    twentyNine.explanation = "ErrorMode=3 is not a valid statement in Qlikview Script"
    questions.append(twentyNine)
    
    
    //30
    let thirty = Questions()
    thirty.question = "What does the Garbage tab in Transform File Wizard let us do?"
    
    thirty.optionA = "It collects memory leaks"
    thirty.optionB = "It clears cache"
    thirty.optionC = "It allows the user to clean records that are not useful"
    thirty.optionD = "It allows the user to optimize data model"
    
    thirty.rightAnswer = "It allows the user to clean records that are not useful"
    thirty.explanation = "Garbage tab allows to do some data transformation"
    questions.append(thirty)
    
    
    //31
    let thirtyOne = Questions()
    thirtyOne.question = "Say you as a developer got stuck with some Qlikview functionality and would like to take some help from a colleague from a different department. But you are not allowed to share any real data about your Qlikview application. So can you encrypt the fields and data by some means, if yes, then how?"
    
    thirtyOne.optionA = "Settings > User Preference > Design > Change"
    thirtyOne.optionB = "Settings > Document Properties > Scrambling tab and select fields that needs to be scrambled"
    thirtyOne.optionC = "Settings > Document Properties > Security > Allow Scrambling"
    thirtyOne.optionD = "Settings > Document Properties > Security > Module Password"
    
    thirtyOne.rightAnswer = "Settings > Document Properties > Scrambling tab and select fields that needs to be scrambled"
    thirtyOne.explanation = "Same as Correct Option"
    questions.append(thirtyOne)
    
    
    //32
    let thirtyTwo = Questions()
    thirtyTwo.question = "Say you as a developer got stuck with some Qlikview functionality and would like to take some help from a colleague from a different department. You scrambled the data because of confidentiality and discussed a possible solution. But now the problem is how do you un-scramble your data back to original data?"
    
    thirtyTwo.optionA = "Settings > User Preference > Design > Change > Unscramble"
    thirtyTwo.optionB = "You will have to reload the Qlikview document"
    thirtyTwo.optionC = "Settings > Document Properties > Security > Uncheck Allow Scrambling"
    thirtyTwo.optionD = "Settings > Document Properties > Security > Remove Module Password"
    
    thirtyTwo.rightAnswer = "You will have to reload the Qlikview document"
    thirtyTwo.explanation = "Same as correct option"
    questions.append(thirtyTwo)
    
    
    //33
    let thirtyThree = Questions()
    thirtyThree.question = "Say you as a developer given users a Input Box to do ad-hoc queries. But you want to alert them by playing a sound when they input values outside the constraints, which option is more feasible?"
    
    thirtyThree.optionA = "Set a Macro to play a sound on violating the constraints"
    thirtyThree.optionB = "Input Box Properties > Presentation > Insert an Error Message"
    thirtyThree.optionC = "Input Box Properties > Constraints > Check Sound on Illegal Entry"
    thirtyThree.optionD = "Input Box Properties > Constraints > Check Alert Sound"
    
    thirtyThree.rightAnswer = "Input Box Properties > Constraints > Check Sound on Illegal Entry"
    thirtyThree.explanation = "Same as Correct Option"
    questions.append(thirtyThree)
    
    
    //34
    let thirtyFour = Questions()
    thirtyFour.question = "In Qlikview Desktop Webview mode, which of the following is NOT allowed?"
    
    thirtyFour.optionA = "Clear All Selections"
    thirtyFour.optionB = "Create New Sheet objects"
    thirtyFour.optionC = "Add New sheets"
    thirtyFour.optionD = "Report Editing"
    
    thirtyFour.rightAnswer = "Report Editing"
    thirtyFour.explanation = "Same as correct option"
    questions.append(thirtyFour)
    
    
    
    //35
    let thirtyFive = Questions()
    thirtyFive.question = "Give a business case where you would use a Funnel chart?"
    
    thirtyFive.optionA = "Compare each customer purchase history"
    thirtyFive.optionB = "Compare sales from different sales channel"
    thirtyFive.optionC = "Compare year over year sales"
    thirtyFive.optionD = "Compare sales done by each sales person"
    
    thirtyFive.rightAnswer = "Compare sales from different sales channel"
    thirtyFive.explanation = "Funnel chart looks tapered. Hence upper portion resembles high sales in that channel and last part could mean low sales in that channel"
    questions.append(thirtyFive)
    
    
    //36
    let thirtySix = Questions()
    thirtySix.question = "When you import a Qlikview Bookmark, then which file type would you import?"
    
    thirtySix.optionA = ".QVX files"
    thirtySix.optionB = ".QBM files"
    thirtySix.optionC = ".QVD files"
    thirtySix.optionD = ".QVS files"
    
    thirtySix.rightAnswer = ".QBM files"
    thirtySix.explanation = "Same as Correct Option"
    questions.append(thirtySix)
    
    
    
    //37
    let thirtySeven = Questions()
    thirtySeven.question = "What does this expression return:\n\nnetworkdays('31/03/2016', '07/04/2016', '02/04/2016', '04/04/2016')"
    
    thirtySeven.optionA = "5"
    thirtySeven.optionB = "7"
    thirtySeven.optionC = "9"
    thirtySeven.optionD = "8"
    
    thirtySeven.rightAnswer = "5"
    thirtySeven.explanation = "NetWorkDays counts only Monday to Friday and subtracts holidays"
    questions.append(thirtySeven)
    
    
    
    //38
    let thirtyEight = Questions()
    thirtyEight.question = "What does the IsPartialReload() function return if the current reload is partial?"
    
    thirtyEight.optionA = "1"
    thirtyEight.optionB = "TRUE"
    thirtyEight.optionC = "-1"
    thirtyEight.optionD = "0"
    
    thirtyEight.rightAnswer = "-1"
    thirtyEight.explanation = "It returns -1 which means True"
    questions.append(thirtyEight)
    
    
    //39
    let thirtyNine = Questions()
    thirtyNine.question = "Given there is a mismatch between section access reduction fields and corresponding section application field then what data will user be able to see (Admin in any case will see all data) if strict exclusion is not checked?"
    
    thirtyNine.optionA = "User will not be given access to any data"
    thirtyNine.optionB = "User will only see data defined in Section Access reduction fields"
    thirtyNine.optionC = "Users will see all data"
    thirtyNine.optionD = "Users will not be able to access the application"
    
    thirtyNine.rightAnswer = "Users will see all data"
    thirtyNine.explanation = "Same as correct option"
    questions.append(thirtyNine)
    
    
    //40
    let fourty = Questions()
    fourty.question = "In a linear regression equation y = Mx + C, which of the following function would calculate M for a series of X-expressions and Y-expression pairs?"
    
    fourty.optionA = "AVG"
    fourty.optionB = "linest_m"
    fourty.optionC = "linest_b"
    fourty.optionD = "It cannot be calculated in Qlikview"
    
    fourty.rightAnswer = "linest_m"
    fourty.explanation = "Same as correct option"
    questions.append(fourty)
    
    
    //41
    let fourtyOne = Questions()
    fourtyOne.question = "In a linear regression equation y = Mx + C, which of the following function would calculate C for a series of X-expressions and Y-expression pairs?"
    
    fourtyOne.optionA = "AVG"
    fourtyOne.optionB = "linest_c"
    fourtyOne.optionC = "linest_b"
    fourtyOne.optionD = "It cannot be calculated in Qlikview"
    
    fourtyOne.rightAnswer = "linest_b"
    fourtyOne.explanation = "There is no such function as linest_c in Qlik."
    questions.append(fourtyOne)
    
    
    //42
    let fourtyTwo = Questions()
    fourtyTwo.question = "In a linear regression equation y = Mx + C, which of the following function would calculate the aggregated standard error for M for a series of X-expressions and Y-expression pairs?"
    
    fourtyTwo.optionA = "linest_seb"
    fourtyTwo.optionB = "linest_m"
    fourtyTwo.optionC = "linest_b"
    fourtyTwo.optionD = "linest_sem"
    
    fourtyTwo.rightAnswer = "linest_sem"
    fourtyTwo.explanation = "linest_sem returns the aggregated standard error for M values"
    questions.append(fourtyTwo)
    
    
    //43
    let fourtyThree = Questions()
    fourtyThree.question = "In a linear regression equation y = Mx + C, which of the following function would calculate the aggregated standard error for y for a  series of X-expressions and Y-expression pairs?"
    fourtyThree.optionA = "linest_sey"
    fourtyThree.optionB = "linest_m"
    fourtyThree.optionC = "linest_b"
    fourtyThree.optionD = "linest_sem"
    
    fourtyThree.rightAnswer = "linest_sey"
    fourtyThree.explanation = "linest_sey returns the aggregated standard error for y values"
    questions.append(fourtyThree)
    
    
    //44
    let fourtyFour = Questions()
    fourtyFour.question = "What does the following function return index('1234567', '34')"
    
    fourtyFour.optionA = "3"
    fourtyFour.optionB = "3 & 4"
    fourtyFour.optionC = "4"
    fourtyFour.optionD = "12567"
    
    fourtyFour.rightAnswer = "3"
    fourtyFour.explanation = "Index returns the position"
    questions.append(fourtyFour)
    
    //45
    let fourtyFive = Questions()
    fourtyFive.question = "What does the following function return PurgeChar('Eztia.123in', '123')"
    
    fourtyFive.optionA = "123"
    fourtyFive.optionB = "Eztiain"
    fourtyFive.optionC = "Eztia.in"
    fourtyFive.optionD = "Eztia"
    
    fourtyFive.rightAnswer = "Eztia.in"
    fourtyFive.explanation = "PurgeChar returns String 1 minus String 2"
    questions.append(fourtyFive)
    
    
    //46
    let fourtySix = Questions()
    fourtySix.question = "Which of the following is supported in Ajax client?"
    
    fourtySix.optionA = "Reports"
    fourtySix.optionB = "Macro"
    fourtySix.optionC = "Button"
    fourtySix.optionD = "MultiBox"
    
    fourtySix.rightAnswer = "Reports"
    fourtySix.explanation = "Alerts and Reports are supported in Ajax client"
    questions.append(fourtySix)
    
    
    //47
    let fourtySeven = Questions()
    fourtySeven.question = "Which of the following is correct description for peek() function in backend script?"
    
    fourtySeven.optionA = "Peek('FieldName', RowNumber, 'TableName')"
    fourtySeven.optionB = "Peek('TableName', RowNumber, 'FieldName')"
    fourtySeven.optionC = "Peek('FieldName', ColumnNumber, 'TableName')"
    fourtySeven.optionD = "Peek('FieldName', RowNumber)"
    
    fourtySeven.rightAnswer = "Peek('FieldName', RowNumber, 'TableName')"
    fourtySeven.explanation = "Same as Correct Option"
    questions.append(fourtySeven)
    
    
    //48
    let fourtyEight = Questions()
    fourtyEight.question = "Can you send alert emails from Qlikview Desktop Application ?"
    
    fourtyEight.optionA = "It is not possible"
    fourtyEight.optionB = "Settings > User Preferences > Mail, we can configure it to send alert emails"
    fourtyEight.optionC = "Settings > Sheet Properties > Mail, we can configure it for send alert emails"
    fourtyEight.optionD = "Configure back end script with SMTP server to send alert emails"
    
    fourtyEight.rightAnswer = "Settings > Document Properties > Mail, we can configure it to send alert emails"
    fourtyEight.explanation = "Same as Correct Option"
    questions.append(fourtyEight)
    
    
    //49
    let fourtyNine = Questions()
    fourtyNine.question = "Which of the following is wrong about Qlikview Server?"
    
    fourtyNine.optionA = "For User Management"
    fourtyNine.optionB = "User Authorization"
    fourtyNine.optionC = "Hosting Qlikview Application"
    fourtyNine.optionD = "For doing user authentication"
    
    fourtyNine.rightAnswer = "For doing user authentication"
    fourtyNine.explanation = "User authentication is done by QV web server and DSC combined"
    questions.append(fourtyNine)
    
    
    //50
    let fifty = Questions()
    fifty.question = "Our user wants to have common filters and other selection objects in all sheets, but there could be further changes in their properties,  so what is a good way to handle such multiple changes in multiple places related to these sheet objects? "
    
    fifty.optionA = "Give proper sheet name to identify to which sheet they belong to"
    fifty.optionB = "Copy the common objects from one sheet and paste them as linked objects in multiple sheets"
    fifty.optionC = "Build a Link Table to refer to common fields"
    fifty.optionD = "Such feature is not available"
    
    fifty.rightAnswer = "Copy the common objects from one sheet and paste them as linked objects in multiple sheets"
    fifty.explanation = "Linked object was introduced in QV 10"
    questions.append(fifty)
    
    
    //51
    let fiftyOne = Questions()
    fiftyOne.question = "Which of the following combination in Qlikview Server is responsible for interpreting the Qlik document and for displaying the data within the objects?"
    
    fiftyOne.optionA = "Qlikview Publisher and Access Point"
    fiftyOne.optionB = "Qlikview Server and Access Point"
    fiftyOne.optionC = "Qlikview Web Server and Qlikview Server"
    fiftyOne.optionD = "Qlikview Distribution Service and Qlikview Server"
    
    fiftyOne.rightAnswer = "Qlikview Web Server and Qlikview Server"
    fiftyOne.explanation = "QVWS and Qlikview Server are responsible to display data and interpret it"
    questions.append(fiftyOne)
    
    
    //52
    let fiftyTwo = Questions()
    fiftyTwo.question = "Which of the following is NOT done by Qlikview Web Server (QVWS)?"
    
    fiftyTwo.optionA = "User authentication"
    fiftyTwo.optionB = "Load balancing"
    fiftyTwo.optionC = "Hosting the access point"
    fiftyTwo.optionD = "Maintaining QVPR folder"
    
    fiftyTwo.rightAnswer = "Maintaining QVPR folder"
    fiftyTwo.explanation = "QVPR folder is maintained by Qlikview Management Service"
    questions.append(fiftyTwo)
    
    
    
    //53
    let fiftyThree = Questions()
    fiftyThree.question = "Given you have 10 tables in your data model how can you quickly calculate the total number of records loaded?"
    
    fiftyThree.optionA = "Using RecNo()"
    fiftyThree.optionB = "Using NoOfRows()"
    fiftyThree.optionC = "Using $Rows"
    fiftyThree.optionD = "Using RowNo()"
    
    fiftyThree.rightAnswer = "Using $Rows"
    fiftyThree.explanation = "Using sum($Rows) will give sum total of records loaded from all tables"
    questions.append(fiftyThree)
    
    
    //54
    let fiftyFour = Questions()
    fiftyFour.question = "Users are having trouble in finding an application in access point because every time the thumbnail changes, what could simplify this issue?"
    
    fiftyFour.optionA = "Using an image in text object and putting it in first sheet"
    fiftyFour.optionB = "Adding an image in the access point thumbnail settings page"
    fiftyFour.optionC = "Adding an Action to Document Event Trigger-- OnOpen to open a particular sheet meant for thumbnail"
    fiftyFour.optionD = "Using RowNo()"
    
    fiftyFour.rightAnswer = "Adding an Action to Document Event Trigger-- OnOpen to open a particular sheet meant for thumbnail"
    fiftyFour.explanation = "Same as Correct Option"
    questions.append(fiftyFour)
    
    
    //55
    let fiftyFive = Questions()
    fiftyFive.question = "A developer has used a Rank Function like this: rank( sum( Sales ), 4 ), what does this '4' mean here?"
    
    fiftyFive.optionA = "lowest rank across all rows"
    fiftyFive.optionB = "highest rank on first row and then decrement by one across each row"
    fiftyFive.optionC = "lowest rank on first row and then increment by one across each row"
    fiftyFive.optionD = "Rank 1 in first row and then increment by one"
    
    fiftyFive.rightAnswer = "lowest rank on first row and then increment by one across each row"
    fiftyFive.explanation = "Same as Correct Option"
    questions.append(fiftyFive)
    
    //--------
    
    return questions
    
}

