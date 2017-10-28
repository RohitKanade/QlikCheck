//
//  Scripts.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 28/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import Foundation

func QlikServerPublisher() -> [Questions] {
    
    var questions = [Questions]()
    
    // MARK: Questions
    
    
    let one = Questions()
    one.question = "Welcome to Qlikview Server,\nWhat is a mounted folder in Qlikview Server?"
    
    
    one.optionA = "It is a folder Qlikview Server stores all .PGO files"
    one.optionB = "It is a document folder, and the files in it are displayed in Qlikview Access Point"
    one.optionC = "It is a document folder which is used to keep all QVW files"
    one.optionD = "This folder contains all files which are used for Binary load"
    
    one.rightAnswer = "It is a document folder, and the files in it are displayed in Qlikview Access Point"
    
    one.explanation = "Same as Correct Option"
    
    questions.append(one)
    
    // 2
    let two = Questions()
    two.question = "Given a scenario where the QVWS (Qlikview Web Server) is failing to load, then how can we use QMC without a web server (assuming IIS is also not configured)?"
    
    two.optionA = "We will then have to re-install/repair Qlikview Server"
    two.optionB = "QMC comes with a default web server of its own, hence QMC is always available"
    two.optionC = "QMC do not need any web server for its functioning"
    two.optionD = "IIS automatically takes over if QVWS fails to load"
    
    two.rightAnswer = "QMC comes with a default web server of its own, hence QMC is always available"
    
    two.explanation = "Same as Correct Option"
    
    questions.append(two)
    
    // 3
    let three = Questions()
    three.question = "Which of the following component is responsible for converting Qlikview Documents reports into PDF format?"
    
    three.optionA = "QVS"
    three.optionB = "QVB"
    three.optionC = "QVWS"
    three.optionD = "DSC"
    
    three.rightAnswer = "QVB"
    
    three.explanation = "QVB (Qlikview Batch) is responsible for converting QV documents reports to pdf format"
    
    questions.append(three)
    
    // 4
    let four = Questions()
    four.question = "What is the Directory Service Connector responsible for?"
    
    four.optionA = "It determines access rights based on user group information"
    four.optionB = "It is responsible for QV file distribution"
    four.optionC = "It is responsible for maintaining reload tasks"
    four.optionD = "It is responsible for ODBC connection"
    
    four.rightAnswer = "It determines access rights based on user group information"
    
    four.explanation = "Same as Correct Option"
    
    questions.append(four)
    
    // 5
    let five = Questions()
    five.question = "What information does the CalData.pgo file stores?"
    
    five.optionA = "It maintains record of CALs"
    five.optionB = "It maintains record of Active users"
    five.optionC = "It maintains record of failed reload tasks"
    five.optionD = "It maintains record of Server Licenses"
    
    five.rightAnswer = "It maintains record of CALs"
    five.explanation = "Same as Correct Option"
    
    
    questions.append(five)
    
    
    
    //6
    let six = Questions()
    six.question = "What is a LEF file and its purpose?"
    
    six.optionA = "License Enabler File is a text file, and has information about server licenses"
    six.optionB = "License Enabler File is a text file, and has information about both server & publisher"
    six.optionC = "License Enabler File is a html file, and has information about CALs"
    six.optionD = "License Enabler File is a text file, and has information about server type, # of CALs & types"
    
    six.rightAnswer = "License Enabler File is a text file, and has information about server type, # of CALs & types"
    six.explanation = "Same as Correct Option"
    questions.append(six)
    
    
    //7
    let seven = Questions()
    seven.question = "What is wrong about Small Business Edition, (SBE) Qlikview server?"
    
    seven.optionA = "SBE has maximum 25 Named CAL"
    seven.optionB = "Several SBE can be added using Clustering"
    seven.optionC = "SBE has maximum 100 Document CAL"
    seven.optionD = "In SBE only Named and Document CAL can be used"
    
    seven.rightAnswer = "Several SBE can be added using Clustering"
    seven.explanation = "In SBE additional servers cannot be added"
    questions.append(seven)
    
    
    //8
    let eight = Questions()
    eight.question = "What is NTLM authentication mode in Qlikview server?"
    
    
    eight.optionA = "NTLM allows windows users to use single sign on (SSO)"
    eight.optionB = "NTLM doesn't require username and password"
    eight.optionC = "NTLM doesn't require Active Directory for authentication"
    eight.optionD = "NTLM stands for New Technology Legitimate Member"
    
    eight.rightAnswer = "NTLM allows windows users to use single sign on (SSO)"
    eight.explanation = "Same as Correct Option"
    questions.append(eight)
    
    
    //9
    let nine = Questions()
    nine.question = "In NTFS authorization mode, who controls the file access?"
    
    nine.optionA = "Qlikview Server authorizes the file access"
    nine.optionB = "Windows OS authorizes the file access"
    nine.optionC = "Access Point authorizes the file access"
    nine.optionD = "Qlikview Directory Service Connector authorizes the file access"
    
    nine.rightAnswer = "Windows OS authorizes the file access"
    nine.explanation = "Same as correct option"
    questions.append(nine)
    
    
    //10
    let ten = Questions()
    ten.question = "In DMS authorization mode, who controls the file access?"
    
    ten.optionA = "Qlikview Server authorizes the file access"
    ten.optionB = "Windows OS authorizes the file access"
    ten.optionC = "Access Point authorizes the file access"
    ten.optionD = "Qlikview Directory Service Connector authorizes the file access"
    
    ten.rightAnswer = "Qlikview Server authorizes the file access"
    ten.explanation = "Same as correct option"
    questions.append(ten)
    
    //11
    let eleven = Questions()
    eleven.question = "One of our Qlik Administrator has authenticated a custom user in NTFS mode,but those users cannot access any documents, why?"
    
    eleven.optionA = "Section Access must be wrong"
    eleven.optionB = "Because they are not part of LDAP or Active Directory"
    eleven.optionC = "Custom Users cannot be authorized in NTFS mode"
    eleven.optionD = "Custom Users cannot be authenticated in NTFS mode"
    
    eleven.rightAnswer = "Custom Users cannot be authorized in NTFS mode"
    eleven.explanation = "Same as correct option"
    questions.append(eleven)
    
    //12
    let twel = Questions()
    twel.question = "Can we invite only those users to session collaboration, who has Named CALs?"
    
    twel.optionA = "No, Any User with an email id can be invited for session collaboration"
    twel.optionB = "Yes, Only User with Named CALs are allowed"
    twel.optionC = "No, Only User with Document CALs are allowed"
    twel.optionD = "No, Only User with Session CALs are allowed"
    
    twel.rightAnswer = "No, Any User with an email id can be invited for session collaboration"
    twel.explanation = "Same as correct option"
    questions.append(twel)
    
    //13
    let thirteen = Questions()
    thirteen.question = "Which of the following is NOT allowed in Annotations in Qlikview Server?"
    
    thirteen.optionA = "Comments"
    thirteen.optionB = "Notifications on Reload"
    thirteen.optionC = "Snapshots"
    thirteen.optionD = "Tag an user"
    
    thirteen.rightAnswer = "Tag an user"
    thirteen.explanation = "Same as Correct Option"
    questions.append(thirteen)
    
    //14
    let fourteen = Questions()
    fourteen.question = "What is SharedFileViewer used for? ,\nShareFileViewer is part of Power Tools?"
    
    fourteen.optionA = "SharedFileViewer is used to analyse .shared files of QVW documents"
    fourteen.optionB = "SharedFileViewer is used to analyse document chaining"
    fourteen.optionC = "SharedFileViewer is used to analyse Server Objects shared by Users"
    fourteen.optionD = "SharedFileViewer is used to analyse files shared during Session Collaboration"
    
    fourteen.rightAnswer = "SharedFileViewer is used to analyse .shared files of QVW documents"
    fourteen.explanation = "Same as correct option"
    questions.append(fourteen)
    
    
    //15
    let fixteen = Questions()
    fixteen.question = "What does the \"Task Dependencies\" section , in Triggers tab in Source Documents mean?"
    
    fixteen.optionA = "Tasks listed in Task Dependencies section must successfully complete before Current Triggers tasks can run"
    fixteen.optionB = "Tasks listed in Task Dependencies section must successfully complete after Current Triggers tasks can run"
    fixteen.optionC = "Tasks listed in Task Dependencies checks whether Current Triggers tasks ran successfully"
    fixteen.optionD = "Tasks listed in Task Dependencies section is used to include files"
    
    fixteen.rightAnswer = "Tasks listed in Task Dependencies section must successfully complete before Current Triggers tasks can run"
    fixteen.explanation = "Same as correct option"
    questions.append(fixteen)
    
    
    //16
    let sixteen = Questions()
    sixteen.question = "Which of the following is NOT correct about EDX?"
    
    sixteen.optionA = "Event Driven Execution can be used to initiate a task in QMS"
    sixteen.optionB = "Event Driven Execution can be used to run a Qlikview batch from external events"
    sixteen.optionC = "Event Driven Execution can be used by an ETL tool to trigger Qlikview jobs"
    sixteen.optionD = "Event Driven Execution can be used directly by QVWS to reload a task"
    
    sixteen.rightAnswer = "Event Driven Execution can be used directly by QVWS to reload a task"
    sixteen.explanation = "Same as correct option"
    questions.append(sixteen)
    
    
    //17
    let seventeen = Questions()
    seventeen.question = "Our  Qlik Admin has configured both Qlikview Web Server and IIS, \nso can both these services uses Port 80 simultaneously?"
    
    seventeen.optionA = "No, only one of them can use port 80 and other has to use different port"
    seventeen.optionB = "No, because only one web server can be installed at a time in a server"
    seventeen.optionC = "Yes, both services can share the same port"
    seventeen.optionD = "Yes, Port 80 can be scheduled to be used for 12 hours by QVWS and 12 hours by IIS"
    
    seventeen.rightAnswer = "Yes, both services can share the same port"
    seventeen.explanation = "Same as correct option"
    questions.append(seventeen)
    
    
    //18
    let eighteen = Questions()
    eighteen.question = "What is the purpose of QVD Generation Task, available in QMC?"
    
    eighteen.optionA = "It can be used to generate QVD files without having to use QVW file"
    eighteen.optionB = "It is used for converting Big Data set into QVD"
    eighteen.optionC = "QVD generation can treat data as in QVD format without actually converting them"
    eighteen.optionD = "QVD generation is the component in QVW which converts data into QVD format"
    
    eighteen.rightAnswer = "It can be used to generate QVD files without having to use QVW file"
    eighteen.explanation = "Same as correct option"
    questions.append(eighteen)
    
    
    //19
    let nineteen = Questions()
    nineteen.question = "Which of the following is NOT a reason to use Qlikview Clustering or Distributed Depployments?"
    
    nineteen.optionA = "Clustering is used to scale Qlikview environments across multiple servers"
    nineteen.optionB = "Clustering is used to optimize utilization"
    nineteen.optionC = "Clustering is used for back up in case of hardware failure"
    nineteen.optionD = "Clustering is used as additional layer for data security and authentication"
    
    nineteen.rightAnswer = "Clustering is used as additional layer for data security and authentication"
    nineteen.explanation = "Same as Correct Option"
    questions.append(nineteen)
    
    
    //20
    let twenty = Questions()
    twenty.question = "Which of the following Load Balancing method is NOT supported by Qlikview Access point?"
    
    twenty.optionA = "CPU with RAM overload"
    twenty.optionB = "Loaded Document"
    twenty.optionC = "Random"
    twenty.optionD = "Distributed Network"
    
    twenty.rightAnswer = "Distributed Network"
    twenty.explanation = "Distributed Network is not an available choice"
    questions.append(twenty)
    
    //21
    let twentyone = Questions()
    twentyone.question = "Can you please choose the correct method for the Random load balancing?"
    
    twentyone.optionA = "In this method the access point chooses a node at random"
    twentyone.optionB = "Based on RAM and CPU utilization the node is chosen"
    twentyone.optionC = "In this method same document is directed to the same server during a session"
    twentyone.optionD = "Depending on where the QVW is preloaded that node is chosen"
    
    twentyone.rightAnswer = "In this method the access point chooses a node at random"
    twentyone.explanation = "Same as correct option"
    questions.append(twentyone)
    
    
    //22
    let twentytwo = Questions()
    twentytwo.question = "Can you please choose the correct method for the Loaded document load balancing?"
    
    twentytwo.optionA = "In this method the access point chooses a node at random"
    twentytwo.optionB = "Based on RAM and CPU utilization the node is chosen"
    twentytwo.optionC = "In this method same document is directed to the same server during a session"
    twentytwo.optionD = "Depending on where the QVW is preloaded that node is chosen"
    
    twentytwo.rightAnswer = "In this method same document is directed to the same server during a session"
    twentytwo.explanation = "Same as Correct Option"
    questions.append(twentytwo)
    
    
    //23
    let twentythree = Questions()
    twentythree.question = "What does ErrorCode 5 warning means related to PGO files in the Qlikview Server events?"
    
    twentythree.optionA = "ErrorCode 5 means Access Denied"
    twentythree.optionB = "ErrorCode 5 means invalid File"
    twentythree.optionC = "ErrorCode 5 means directory is full"
    twentythree.optionD = "ErrorCode 5 means file not found"
    
    twentythree.rightAnswer = "ErrorCode 5 means Access Denied"
    twentythree.explanation = "Same as correct option"
    questions.append(twentythree)
    
    
    //24
    let twentyfour = Questions()
    twentyfour.question = "Sometimes in Access Point we see this statement \"Message: No Server\", which of the following could be a reason?"
    
    twentyfour.optionA = "Qlikview Server license is not applied"
    twentyfour.optionB = "Qlikview Server Services is not running"
    twentyfour.optionC = "The local admin could not restart the QVS Service using local admin account"
    twentyfour.optionD = "All of the above"
    
    twentyfour.rightAnswer = "All of the above"
    twentyfour.explanation = "Any/All of the above option could cause that error"
    questions.append(twentyfour)
    
    
    //25
    let twentyFive = Questions()
    twentyFive.question = "Publisher can do data reduction by using \"Simple Reduce\" method. Which choice among the following is NOT available?"
    
    twentyFive.optionA = "Data reduction based on Fields in Data Model"
    twentyFive.optionB = "Data reduction based on CALs assigned"
    twentyFive.optionC = "Field values"
    twentyFive.optionD = "Based on Selected values"
    
    twentyFive.rightAnswer = "Data reduction based on CALs assigned"
    twentyFive.explanation = "Same as Correct Option"
    questions.append(twentyFive)
    
    
    return questions
    
}
