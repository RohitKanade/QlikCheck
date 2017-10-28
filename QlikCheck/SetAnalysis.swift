//
//  SetAnalysis.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 28/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import Foundation


func SetAnalysis() -> [Questions] {
    
    var questions = [Questions]()
    
    // MARK: Questions explanation
    
    
    let one = Questions()
    one.question = "Introduction to set analysis:\nWhen we load data into Qlikview, all data is available. So in set expression often you would see something like this {1} or {$} or {BM01} etc. They have a special term called :"
    one.optionA = "Set Modifiers"
    one.optionB = "Set Identifiers"
    one.optionC = "Set Aggregators"
    one.optionD = "Set Selections"
    
    one.rightAnswer = "Set Identifiers"
    one.explanation = "{1}, {$}, {BM01} etc are set of data, hence called set identifiers"
    
    questions.append(one)
    
    // 2
    let two = Questions()
    two.question = "Can you choose which of the following could be a generic Set Expression?\n\nA. QlikFunction({Set_Identifier <FieldA={NewSetA}, FieldB={NewSetB} >} FieldValue)\nB. Aggr({QlikFunction < Set Identifier FieldA={NewSetA}, FieldB={NewSetB} >} FieldValue)\nC. QlikFunction({<FieldA={NewSetA}, FieldB={NewSetB} >} FieldValue)\nD. QlikFunction( Set_Identifier {<FieldA={NewSetA}, FieldB={NewSetB} >} FieldValue)"
    two.optionA = "A"
    two.optionB = "B"
    two.optionC = "C"
    two.optionD = "D"
    
    two.rightAnswer = "A"
    two.explanation = "Same as Correct Option"
    
    questions.append(two)
    
    // 3
    let three = Questions()
    three.question = "In the generic set Expression:\n\nQlikFunction({Set_Identifier <FieldA={NewSetA}, FieldB={NewSetB} >} FieldValue), what are {NewSetA} and {NewSetB} called?\n\n**Suggestion: write this generic expression somewhere for quick reference"
    three.optionA = "Set Aggregators"
    three.optionB = "Set Selections"
    three.optionC = "Set Modifiers"
    three.optionD = "Set Identifiers"
    
    three.rightAnswer = "Set Modifiers"
    three.explanation = "Same as Correct Option"
    
    questions.append(three)
    
    // 4
    let four = Questions()
    four.question = "In the generic set Expression:\nQlikFunction({Set_Identifier <FieldA={NewSetA},\nFieldB={NewSetB} >} FieldValue), which of the following is false?\n**Suggestion: write this generic expression somewhere for quick reference"
    four.optionA = "The set modifiers can be both static and variables with dollar sign expansion"
    four.optionB = "The set modifiers must be static values"
    four.optionC = "The set modifiers must be static values"
    four.optionD = "The set modifiers are not required if TOTAL qualifier is used"
    
    four.rightAnswer = "The set modifiers can be both static and variables with dollar sign expansion"
    four.explanation = "Same as Correct Option"
    
    questions.append(four)
    
    // 5
    let five = Questions()
    five.question = "What is true about the following statements:\nA. Each alternate state can be used as a set identifier\nB. Only the first alternate state defined can be used as a set identifier\nC. Alternate state cannot be used as a set identifier\nD. Alternate state can be used as set modifiers"
    five.optionA = "A"
    five.optionB = "B"
    five.optionC = "C"
    five.optionD = "D"
    
    five.rightAnswer = "A"
    five.explanation = "Same as Correct Option"
    
    questions.append(five)
    
    
    
    //6
    let six = Questions()
    six.question = "Let's say we have the following data set:\nData:\nLoad * inline [\nOrderNo, OrderDate, ShippingDate, SalesPrice\nA1, 1/5/2016, 1/5/2016, 200\nB1, 1/5/2016, 1/5/2016, 200\nC1, 2/5/2016, 3/5/2016, 200\nD1, 13/5/2016, 14/5/2016, 200\n];\nThen what would you comment on this set expression:\nsum({<OrderDate = ShippingDate>} SalesPrice)"
    six.optionA = "It is not a good idea. As we might expect only first two record would match,but in such case range of OrderDate will match with Shipping Date and hence three records could match"
    six.optionB = "Comparing two fields in Set Expression is fairly common"
    six.optionC = "Comparing two fields in Set Expression is the simplest way to match all values between two fields"
    six.optionD = "This feature of set expression allows to do inner join in chart function in front end"
    
    six.rightAnswer = "It is not a good idea. As we might expect only first two record would match,but in such case range of OrderDate will match with Shipping Date and hence three records could match"
    six.explanation = "It is not a good idea. As we might expect only first two record would match,but in such case range of OrderDate will match with Shipping Date and hence three records could match"
    questions.append(six)
    
    
    //7
    let seven = Questions()
    seven.question = "For this scenario:\n\nData:\nLoad * inline [\nOrderNo, OrderDate, ShippingDate, SalesPrice\nA1, 1/5/2016, 1/5/2016, 200 +\nB1, 1/5/2016, 1/5/2016, 200 +\nC1, 1/6/2016, 1/7/2016, 200 +\nD1, 1/13/2016, 1/14/2016, 200 +\nE1, 1/14/2016, 1/14/2016, 500 +\n];\n\nWhat would this set expression return\nSum({$<OrderDate = p(ShippingDate)>}SalesPrice)   ?"
    
    
    seven.optionA = "900"
    seven.optionB = "1300"
    seven.optionC = "400"
    seven.optionD = "500"
    
    seven.rightAnswer = "900"
    seven.explanation = "The P() returns possible values"
    questions.append(seven)
    
    
    //8
    let eight = Questions()
    eight.question = "For this scenario:\n\nData:\nLoad * inline [\nOrderNo, OrderDate, ShippingDate, SalesPrice\nA1, 1/5/2016, 1/5/2016, 200\nB1, 1/5/2016, 1/5/2016, 200\nC1, 1/6/2016, 1/7/2016, 200\nD1, 1/13/2016, 1/14/2016, 200\nE1, 1/14/2016, 1/14/2016, 500\n];\n\nWhat would this set expression return Sum({$<OrderDate -= p(ShippingDate)>}SalesPrice)\n** There is a minus sign before the equal sign?"
    
    eight.optionA = "900"
    eight.optionB = "1300"
    eight.optionC = "400"
    eight.optionD = "500"
    
    eight.rightAnswer = "400"
    eight.explanation = "The P() returns possible values"
    questions.append(eight)
    
    
    //9
    let nine = Questions()
    nine.question = "What does the following set expression mean?\n\nsum({1<Country = {India}>} Sales)"
    nine.optionA = "It means sum of sales for set Country= India"
    nine.optionB = "It means sum of sales for set Country= India but disregard current selection"
    nine.optionC = "It means sum of sales for set Country= India but consider current selection"
    nine.optionD = "The set expression is incorrect as value India should be within quotes"
    
    nine.rightAnswer = "It means sum of sales for set Country= India but disregard current selection"
    nine.explanation = "In such problem always compare it with the generic set expression\nQlikFunction({Set_Identifier <FieldA={NewSetA}, FieldB={NewSetB} >} FieldValue)"
    questions.append(nine)
    
    
    //10
    let ten = Questions()
    ten.question = "What does the following set expression mean?\n\nsum({$<Country=, Year={2016} >} Sales)"
    ten.optionA = "It means sum of sales for set Year = 2016"
    ten.optionB = "It means sum of sales for set Year = 2016 but disregard current selection"
    ten.optionC = "It means sum of sales for current selection and for set Year = 2016 but ignore selection of Country field"
    ten.optionD = "It means sum of sales for set Year= 2016 and all values of Country"
    
    ten.rightAnswer = "It means sum of sales for current selection and for set Year = 2016 but ignore selection of Country field"
    ten.explanation = "In such problem always compare it with the generic set expression\nQlikFunction({Set_Identifier <FieldA={NewSetA}, FieldB={NewSetB} >} FieldValue)"
    questions.append(ten)
    
    //11
    let eleven = Questions()
    eleven.question = "What does the following set expression mean?\nsum({$<Year={2016}, Country={“S*”}>} Sales)"
    
    eleven.optionA = "It means sum of sales for current selection and new filters as Year and Country"
    eleven.optionB = "It means sum of sales for current selection, Year = 2016 and only Countries matches the search string \"S*\""
    eleven.optionC = "Wildcard search is not allowed in Set Expression. Error Occurred"
    eleven.optionD = "Sum of sales for year 2016 and all countries which do not start with S"
    
    eleven.rightAnswer = "It means sum of sales for current selection, Year = 2016 and only Countries matches the search string \"S*\""
    eleven.explanation = "In such problem always compare it with the generic set expression\nQlikFunction({Set_Identifier <FieldA={NewSetA}, FieldB={NewSetB} >} FieldValue)"
    questions.append(eleven)
    
    //12
    let twel = Questions()
    twel.question = "What does the following set expression mean?\nSum({$*[My BookMark]} Sales)"
    twel.optionA = "It means sum of sales from current selection multiplied by sum of sales from my bookmark selection"
    twel.optionB = "It means return sum of sales from intersection of my bookmark and current selection"
    twel.optionC = "Illegal set identifiers"
    twel.optionD = "It means sum of sales from either book mark selection or current selection"
    
    twel.rightAnswer = "It means return sum of sales from intersection of my bookmark and current selection"
    twel.explanation = "The asterisk * mean intersection"
    questions.append(twel)
    
    //13
    let thirteen = Questions()
    thirteen.question = "What does the following set expression mean?\nSum({$ / BM01} Sales)"
    
    thirteen.optionA = "It means sum of sales from current selection multiplied by sum of sales from my bookmark selection"
    thirteen.optionB = "It means return sum of sales from either(XOR) bookmark or current selection"
    thirteen.optionC = "Illegal set identifiers"
    thirteen.optionD = "It means sum of sales from either book mark selection or current selection"
    
    thirteen.rightAnswer = "It means return sum of sales from either(XOR) bookmark or current selection"
    thirteen.explanation = "The / means values from either sets (opposite of *) and not on both"
    questions.append(thirteen)
    
    //14
    let fourteen = Questions()
    fourteen.question = "As a developer how would you write a set expression to calculate sum of sales for year equal to and higher than 2015?"
    
    fourteen.optionA = "Sum({<Year={2015}>} Sales)"
    fourteen.optionB = "Sum({<Year={\">=2015\"}>} Sales)"
    fourteen.optionC = "sum(if(Year =(\">=2015\"),Sales,0)"
    fourteen.optionD = "sum({<Year ={*}-{2015}>} Sales)"
    
    fourteen.rightAnswer = "Sum({<Year={\">=2015\"}>} Sales)"
    fourteen.explanation = "Same as Correct Option"
    questions.append(fourteen)
    
    
    //15
    let fixteen = Questions()
    fixteen.question = "What does the following set expression mean?\nCount( {(BM01 * BM05) - $} Distinct Products)"
    fixteen.optionA = "It means multiply the count of both bookmarks and subtract from current selection count"
    fixteen.optionB = "It means count of products for intersection of both bookmarks and not considering the current selection"
    fixteen.optionC = "It means count of Products from either bookmarks and subtract current selection"
    fixteen.optionD = "Illegal set identifiers"
    
    fixteen.rightAnswer = "It means count of products for intersection of both bookmarks and not considering the current selection"
    fixteen.explanation = "Such arithmetic operations are allowed in set identifiers"
    questions.append(fixteen)
    
    
    //16
    let sixteen = Questions()
    sixteen.question = "How would you write a set expression to calculate sum of sales for those Countries which sold more than 10000 in year 2016?"
    sixteen.optionA = "Sum({<Country={\"=Sum(Sales)>10000\"}, Year ={2016}>} Sales)"
    sixteen.optionB = "Sum({<Country={Sum(Sales)>10000}, Year ={2016}>} Sales)"
    sixteen.optionC = "Sum({<Country={\"=Sum({<Year={2016}>} Sales)>10000\"}>} Sales)"
    sixteen.optionD = "Sum({<Country={Sales>10000}, Year ={2016}>} Sales)"
    
    sixteen.rightAnswer = "Sum({<Country={\"=Sum({<Year={2016}>} Sales)>10000\"}>} Sales)"
    sixteen.explanation = "Here the set modifier needed is countries list who sold more than 10000 in Year 2016. Then compare it with generic set expression to put the above set modifier"
    questions.append(sixteen)
    
    
    //17
    let seventeen = Questions()
    seventeen.question = "How would you write a set expression to calculate sum of sales for max year available in the dataset without setting any separate variables?"
    
    seventeen.optionA = "Sum({<Year={Max(Year)}>} Sales)"
    seventeen.optionB = "Sum({<Year={$(=Max(Year))}>} Sales)"
    seventeen.optionC = "Sum({<Year=Max({Year})>} Sales)"
    seventeen.optionD = "Sum({<Year={1(=Max(Year))}>} Sales)"
    
    seventeen.rightAnswer = "Sum({<Year={$(=Max(Year))}>} Sales)"
    seventeen.explanation = "Here the set modifier needed is Maximum value of the Year field. Then compare it with generic set expression to put the above set modifier"
    questions.append(seventeen)
    
    
    //18
    let eighteen = Questions()
    eighteen.question = "How would you write a set expression to calculate sum of sales for year greater than 2013 and less than equal to 2017?"
   
    eighteen.optionA = "Sum({<Year={>2013<=2017}>} Sales)"
    eighteen.optionB = "Sum({<Year={2013,2017}>} Sales)"
    eighteen.optionC = "Sum({<Year={\">2013<=2017\"}>} Sales)"
    eighteen.optionD = "Sum({<Year={1(2013,2017}>} Sales)"
    
    eighteen.rightAnswer = "Sum({<Year={\">2013<=2017\"}>} Sales)"
    eighteen.explanation = "Here the set modifier needed is Year value greater than 2013 and less than equal to 2017 of the Year field. Then compare it with generic set expression to put the above set modifier"
    questions.append(eighteen)
    
    
    //19
    let nineteen = Questions()
    nineteen.question = "How would you write a set expression to calculate sum of sales for only those years that are selected in BookMark BM05?"
    
    nineteen.optionA = "Sum({<Year={BM05}>} Sales)"
    nineteen.optionB = "Sum({<Year=P({BM05} Year)>} Sales)"
    nineteen.optionC = "Sum({<Year={Year = $(BM05)}>} Sales)"
    nineteen.optionD = "Sum({<Year=E({BM05} Year)>} Sales)"
    
    nineteen.rightAnswer = "Sum({<Year=P({BM05} Year)>} Sales)"
    nineteen.explanation = "Here the set modifiers needed is first find years from BM05 which can be done by P() set."
    questions.append(nineteen)
    
    
    //20
    let twenty = Questions()
    twenty.question = "How would you write a set expression to calculate sum of sales for only those years that are not selected in BookMark BM05?"
    
    
    twenty.optionA = "Sum({<Year={BM05}>} Sales)"
    twenty.optionB = "Sum({<Year=P({BM05} Year)>} Sales)"
    twenty.optionC = "Sum({<Year={Year = $(BM05)}>} Sales)"
    twenty.optionD = "Sum({<Year=E({BM05} Year)>} Sales)"
    
    twenty.rightAnswer = "Sum({<Year=E({BM05} Year)>} Sales)"
    twenty.explanation = "Here the set modifiers needed is first find years from BM05 which are not selected can be done by E() set."
    questions.append(twenty)
    
    //21
    let twentyone = Questions()
    twentyone.question = "What does the following generic set expression with alternate state as set identifier mean?\nQlikFunction({[StateA] <FieldNameA= [StateB]::FieldNameB>} FieldValue)"
    
    
    twentyone.optionA = "It means, values of FieldNameA will be set to FieldNameB which is in StateB"
    twentyone.optionB = "It means, within StateA, FieldNameA will be set values from FieldNameB which is in StateB"
    twentyone.optionC = "It means FieldNameA and FieldNameB from different states has same values"
    twentyone.optionD = "It means intersection of StateA and StateB will be set to FieldNameA"
    
    twentyone.rightAnswer = "It means, within StateA, FieldNameA will be set values from FieldNameB which is in StateB"
    twentyone.explanation = "Same as Correct Option"
    questions.append(twentyone)
    
    
    //22
    let twentytwo = Questions()
    twentytwo.question = "What does the following set expression mean?\nSum({$<Year *= {'2015', '2016'}>} Sales)"
    
    
    twentytwo.optionA = "It means Expression will calculate sum of sales for year equal to 2015 and 2016"
    twentytwo.optionB = "It means Expression will calculate sum of sales for current selection but for intersection of currently year value selected  and 2015 and 2016"
    twentytwo.optionC = "It means Expression will calculate sum of sales for year not equal to 2015 and 2016"
    twentytwo.optionD = "It means Expression will calculate sum of sales for intersection of current selection and year equals to 2015 and 2016"
    
    twentytwo.rightAnswer = "It means Expression will calculate sum of sales for current selection but for intersection of currently year value selected  and 2015 and 2016"
    twentytwo.explanation = "Same as Correct Option"
    questions.append(twentytwo)
    
    
    //23
    let twentythree = Questions()
    twentythree.question = "What does the following set expression mean?\nSum({$<Year += {2015, 2016}>} Sales)"
   
    
    twentythree.optionA = "It means Expression will calculate sum of sales for year equal to 2015 and 2016 as well as other Year values the user has selected"
    twentythree.optionB = "It means Expression will calculate sum of sales for year equals to 2015 and 2016"
    twentythree.optionC = "It means Expression will calculate sum of sales for Years other than 2015 and 2016"
    twentythree.optionD = "It means Expression will calculate sum of sales for all Year values"
    
    twentythree.rightAnswer = "It means Expression will calculate sum of sales for year equal to 2015 and 2016 as well as other Year values the user has selected"
    twentythree.explanation = "Same as Correct Option"
    questions.append(twentythree)
    
    
    //24
    let twentyfour = Questions()
    twentyfour.question = "What is the difference between Expression A = sum({1}Sales) and Expression B = sum({1} TOTAL Sales)?"
   
    
    twentyfour.optionA = "Expression A means total sales disregarding selection but not the dimension, Expression B means total sales disregrading both selection and dimension"
    twentyfour.optionB = "Expression B means total sales disregarding selection but not the dimension, Expression A means total sales disregrading both selection and dimension"
    twentyfour.optionC = "Both expression means total sales in the application"
    twentyfour.optionD = "Both expression means sales for that dimension"
    
    twentyfour.rightAnswer = "Expression A means total sales disregarding selection but not the dimension, Expression B means total sales disregrading both selection and dimension"
    twentyfour.explanation = "Same as Correct Option"
    questions.append(twentyfour)
    
    
    //25
    let twentyFive = Questions()
    twentyFive.question = "What does the set operator '/' signify?"
   
    
    twentyFive.optionA = "It signifies NOR operation"
    twentyFive.optionB = "It signifies OR operation"
    twentyFive.optionC = "It signifies XOR operation"
    twentyFive.optionD = "IIt signifies AND operation"
    
    twentyFive.rightAnswer = "It signifies XOR operation"
    twentyFive.explanation = "Same as Correct Option"
    questions.append(twentyFive)
    
    
    //26
    let twentySix = Questions()
    twentySix.question = "What does the following set expression mean: sum( {$<Country = E({1<Product={'Laptop'}>})>} Sales )?"
   
    
    twentySix.optionA = "It means sum of sales for those countries where they haven't bought Laptop"
    twentySix.optionB = "It means sum of sales for those countries where they bought Laptop"
    twentySix.optionC = "It means sum of sales for countries who only bought Laptop"
    twentySix.optionD = "It means sum of all sales"
    
    twentySix.rightAnswer = "It means sum of sales for those countries where they haven't bought Laptop"
    twentySix.explanation = "E returns the excluded list"
    questions.append(twentySix)
    
    
    //27
    let twentySeven = Questions()
    twentySeven.question = "Sometimes we need to create some dimensions in chart but they do not interact with rest of the data model but can be used with other fields from dimension?"
    
    
    twentySeven.optionA = "We can use ValueLoop in such cases in Calculated Dimension"
    twentySeven.optionB = "We can use ValueList in such cases in Calculated Dimension"
    twentySeven.optionC = "We can add new dimension in Calculated Dimension"
    twentySeven.optionD = "We can modify an existing field from data model and add it in Calculated Dimension"
    
    twentySeven.rightAnswer = "We can use ValueList in such cases in Calculated Dimension"
    twentySeven.explanation = "ValueList can be used as calculated dimension and then referenced in a chart"
    questions.append(twentySeven)
    
    
    //28
    let twentyEight = Questions()
    twentyEight.question = "What does this set expression signify:\nsum({ - ($ + BM05)} Sales)?"
    
    
    twentyEight.optionA = "Returns sum of sales excluding from current selection and bookmark-05"
    twentyEight.optionB = "Returns sum of sales including from current selection and bookmark-05"
    twentyEight.optionC = "Returns sum of sales from current selection and bookmark-05"
    twentyEight.optionD = "Returns sum of sales intersection of current selection and bookmark-05"
    
    twentyEight.rightAnswer = "Returns sum of sales excluding from current selection and bookmark-05"
    twentyEight.explanation = "Always use the generic Set expression to compare for such problems"
    questions.append(twentyEight)
    
    //29
    let twentyNine = Questions()
    twentyNine.question = "Why \"Initial Data Reduction Based on Section Access\" check box is ticked ?"
   
    
    twentyNine.optionA = "Doing so, the document is reduced based on the load script defined in section application area"
    twentyNine.optionB = "Doing so, section access script is executed"
    twentyNine.optionC = "Doing so, the set defined in Set Analysis are reduced"
    twentyNine.optionD = "Doing so, less data is loaded by the data model"
    
    twentyNine.rightAnswer = "Doing so, the document is reduced based on the load script defined in section application area"
    twentyNine.explanation = "Same as Correct Option"
    questions.append(twentyNine)
    
    
    //30
    let thirty = Questions()
    thirty.question = "Can a variable be used inside a Set Expression, can you show an example with a generic expression"
    
    
    thirty.optionA = "QlikFunction({$<FieldNameA={'variable_name'}>}FieldNameB)"
    thirty.optionB = "QlikFunction({$<FieldNameA={$(=$(variable_name))}>}FieldNameB)"
    thirty.optionC = "QlikFunction({$<FieldNameA={$(variable_name)}>}FieldNameB)"
    thirty.optionD = "QlikFunction({$<FieldNameA=$(variable_name)>}FieldNameB)"
    
    thirty.rightAnswer = "QlikFunction({$<FieldNameA={$(=$(variable_name))}>}FieldNameB)"
    thirty.explanation = "Same as Correct Option"
    questions.append(thirty)
    
    
    //--------
    
    return questions
    
}
