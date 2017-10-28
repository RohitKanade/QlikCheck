//
//  QlikSenseServer.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 28/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//
//
//  Scripts.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 28/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import Foundation

func QlikSenseServer() -> [Questions] {
    
    var questions = [Questions]()
    
    // MARK: Questions
    
    
    let one = Questions()
    one.question = "Qliksense Server has all the capabilities as Qliksense desktop, also has additional capabilities but which of the following statement is NOT correct?"
    
    
    one.optionA = "Qliksense Server is browser based, allows data exploration. administration and develop apps in Windows PC, Mac or Mobile Devices"
    one.optionB = "Reuse Contents and Libraries"
    one.optionC = "Manage security rules and resources"
    one.optionD = "Qliksense server do not allow Collaboration and Sharing with other users"
    
    one.rightAnswer = "Qliksense server do not allow Collaboration and Sharing with other users"
    
    one.explanation = "Qliksense does allow collaboration and sharing with other users in secured manner"
    
    questions.append(one)
    
    // 2
    let two = Questions()
    two.question = "What could be a probable cause for the ERR_SSL_PROTOCOL_ERROR before you start the QlikSense Services?"
    
    two.optionA = "Some other software/services must be using port 443 or 80"
    two.optionB = "Qliksense Services are not installed"
    two.optionC = "There is no internet connection while updating the LEF file"
    two.optionD = "Users are not authenticated to access files"
    
    two.rightAnswer = "Some other software/services must be using port 443 or 80"
    
    two.explanation = "Same as Correct Option"
    
    questions.append(two)
    
    // 3
    let three = Questions()
    three.question = "Which of the following is FALSE about User Access and Login Access pass?"
    
    three.optionA = "User Access pass is assigned to identified users who needs unlimited access to Qliksense apps and resources"
    three.optionB = "Login Access pass is assigned for temporary users, anonymous access"
    three.optionC = "Login Access pass has no time limit on usage"
    three.optionD = "Login Access pass has similar usage as User Access pass"
    
    three.rightAnswer = "Login Access pass has no time limit on usage"
    
    three.explanation = "Same as Correct Option"
    
    questions.append(three)
    
    // 4
    let four = Questions()
    four.question = "Which of the following is FALSE about the following statement?"
    
    four.optionA = "When a user logs in with a login pass token, the session is for 60 minutes"
    four.optionB = "When a user logs in with a login pass token, uses it for say 20 minutes and logs out. The 60 minutes count down is reset and can be used again"
    four.optionC = "When a user logs in with a login pass token, and continues to use it even after 60 minutes, another login pass will be used"
    four.optionD = "When a user logs in with a login pass token, the Login pass will renew after 28 days"
    
    four.rightAnswer = "When a user logs in with a login pass token, uses it for say 20 minutes and logs out. The 60 minutes count down is reset and can be used again"
    
    four.explanation = "Actually once a user logs in with a login pass, even if they log out, the 60 minutes count down still continues to run"
    
    questions.append(four)
    
    // 5
    let five = Questions()
    five.question = "Which of the following Administration role is automatically assigned to an User who has entered the first valid license in the Qliksense Management Console"
    
    five.optionA = "ContentAdmin"
    five.optionB = "SecurityAdmin"
    five.optionC = "RootAdmin"
    five.optionD = "DeploymentAdmin"
    
    five.rightAnswer = "RootAdmin"
    five.explanation = "RootAdmin is created during installation, and assigned to the user who first entered a valid license key to the QMC"
    
    
    questions.append(five)
    
    
    
    //6
    let six = Questions()
    six.question = "Which of the following Administration role property is NOT Correct?"
    
    six.optionA = "ContentAdmin has all access rights to all Qliksense resources"
    six.optionB = "ContentAdmin has access to create, delete, update, and read rights"
    six.optionC = "RootAdmin has all access rights to all Qliksense resources"
    six.optionD = "AuditAdmin has read access to all resources"
    
    six.rightAnswer = "ContentAdmin has all access rights to all Qliksense resources"
    six.explanation = "ContentAdmin only has access to create, delete, update and read rights."
    questions.append(six)
    
    
    //7
    let seven = Questions()
    seven.question = "In the hub in Qliksense server, how can you get data in to an App?"
    
    seven.optionA = "By using Data Load Editor interface"
    seven.optionB = "By using the Quick Data Load interface"
    seven.optionC = "By dragging and dropping files"
    seven.optionD = "Only possible by using custom connectors to get data"
    
    seven.rightAnswer = "By using Data Load Editor interface"
    seven.explanation = "Same as Correct Option"
    questions.append(seven)
    
    
    //8
    let eight = Questions()
    eight.question = "In the QMC in Qliksense server, how would you set up a User directory connection?"
    
    
    eight.optionA = "Under Manage Resources > Click 'User Directory Connectors' > Create a New connection such as Active Directory"
    eight.optionB = "Under Manage Content > Click 'Users' > Add new users"
    eight.optionC = "Under Manage Resources > Click on 'Security Rules' to define which users can have access"
    eight.optionD = "By using Customized Groups"
    
    eight.rightAnswer = "Under Manage Resources > Click 'User Directory Connectors' > Create a New connection such as Active Directory"
    eight.explanation = "Same as Correct Option"
    questions.append(eight)
    
    
    //9
    let nine = Questions()
    nine.question = "Say there are four streams.  How would you set up a single rule for multiple Streams?"
    
    nine.optionA = "For each stream write a separate security rule"
    nine.optionB = "Using Custom Properties under Manage Resources, a single rule can be established for multiple streams then assign to each Streams and then set a security rule for Stream Access type"
    nine.optionC = "Such functionality is not available in Qliksense"
    nine.optionD = "Using Custom Properties under Manage Resources, a single rule can be established for multiple streams then assign to each Streams"
    
    nine.rightAnswer = "Using Custom Properties under Manage Resources, a single rule can be established for multiple streams then assign to each Streams and then set a security rule for Stream Access type"
    nine.explanation = "Same as correct option"
    questions.append(nine)
    
    
    //10
    let ten = Questions()
    ten.question = "An authenticated user is not assigned to any stream. However our ContentAdmin mentioned that she has created a single custom property rule for multiple streams. What step probably is missing for which  a user is still not able to see any streams?"
    
    ten.optionA = "The user probably is not associated with any custom property. So that user should be given a Custom property of one or more Stream"
    ten.optionB = "Using single custom property causes this problem and hence each stream should have their own security rules"
    ten.optionC = "When using single custom property Users only present as RootAdmin are able to access streams"
    ten.optionD = "The User must be a AuditAdmin"
    
    ten.rightAnswer = "The user probably is not associated with any custom property. So that user should be given a Custom property of one or more Stream"
    ten.explanation = "Same as Correct Option"
    questions.append(ten)
    
    //11
    let eleven = Questions()
    eleven.question = "In the QlikSense QMC, how would you fix the problem when you see the message -- Unable to get the Custom Properties definitions?"
    
    eleven.optionA = "Reinstall Qliksense Server"
    eleven.optionB = "Add users as RootAdmin"
    eleven.optionC = "Security rule must be a valid statement"
    eleven.optionD = "Restart the QMC"
    
    eleven.rightAnswer = "Restart the QMC"
    eleven.explanation = "Same as Correct Option"
    questions.append(eleven)
    
    //12
    let twel = Questions()
    twel.question = "Say you do not have Remote Desktop Access to the Windows Server where QlikSense is installed, but you are a root admin in QMC. Then how can you make a copy of the ? Qliksense File which your colleague has created to make some quick changes using Qlik Sense Hub?"
    
    twel.optionA = "Using QMC credentials I can still do Remote Desktop"
    twel.optionB = "Export the Qlik Sense File using Qlik Sense QMC and then Import it in Qlik Sense Hub"
    twel.optionC = "Make a Duplicate of the Qlik Sense File using Qlik Sense QMC"
    twel.optionD = "Move the Qlik Sense file to desired location using folder explorer in QMC"
    
    twel.rightAnswer = "Make a Duplicate of the Qlik Sense File using Qlik Sense QMC"
    twel.explanation = "Same as Correct Option"
    questions.append(twel)
    
    //13
    let thirteen = Questions()
    thirteen.question = "You can Access the Qlik Sense Hub, but cannot see the Streams you want to, what could be the cause and how to fix it?"
    
    thirteen.optionA = "If you have access to Qlik Sense by default you should have access to Streams"
    thirteen.optionB = "The user has no access to the stream, and by adding the user by security rules should fix it"
    thirteen.optionC = "Make a Duplicate of the Qlik Sense File using Qlik Sense QMC"
    thirteen.optionD = "By restarting QMC it can be fixed"
    
    thirteen.rightAnswer = "The user has no access to the stream, and by adding the user by security rules should fix it"
    thirteen.explanation = "Same as Correct Option"
    questions.append(thirteen)
    
    //14
    let fourteen = Questions()
    fourteen.question = "In Qlik Sense QMC, you see numbers next to Engine, Proxy, Repository, or Scheduler? What does that signify?"
    
    fourteen.optionA = "It means services are down"
    fourteen.optionB = "It means that many tasks are still pending to be executed"
    fourteen.optionC = "It means that many apps are parallely running"
    fourteen.optionD = "It means those are warning messages"
    
    fourteen.rightAnswer = "It means services are down"
    fourteen.explanation = "Same as Correct Option"
    questions.append(fourteen)
    
    
    //15
    let fixteen = Questions()
    fixteen.question = "In Internet Explorer, you get this message 'App is already' open when you try to open an app, what could be the issue and how to fix it?"
    
    fixteen.optionA = "It means Internet Explorer is not updated to latest version"
    fixteen.optionB = "It means Java is not properly installed in Internet Explorer"
    fixteen.optionC = "It means the file did not close properly after the import, to fix it close internet explorer and open Qlik Sense again"
    fixteen.optionD = "It means those are warning messages, you can cancel it"
    
    fixteen.rightAnswer = "It means the file did not close properly after the import, to fix it close internet explorer and open Qlik Sense again"
    fixteen.explanation = "Same as Correct Option"
    questions.append(fixteen)
    
    
    //16
    let sixteen = Questions()
    sixteen.question = "In Qlik Sense QMC, one or more services did not start after installation, even stopping the services and then re-starting them again did not help so what should be the next corrective option"
    
    sixteen.optionA = "Repair the installation"
    sixteen.optionB = "You need to install it in a new server"
    sixteen.optionC = "Restart the Windows Server"
    sixteen.optionD = "Change root admin to another user"
    
    sixteen.rightAnswer = "Repair the installation"
    sixteen.explanation = "Same as Correct Option"
    questions.append(sixteen)
    
    
    //17
    let seventeen = Questions()
    seventeen.question = "As a Qlik Sense Admin, you realized that a user can access a stream which he or she shouldn't see? How to fix that issue"
    
    seventeen.optionA = "Do an audit query to find which users streams a user can access, then disable or edit the security rules"
    seventeen.optionB = "Remove the user from LDAP/AD group"
    seventeen.optionC = "You can use Section Access to restrict the user"
    seventeen.optionD = "Make the user as Content Admin only"
    
    seventeen.rightAnswer = "Do an audit query to find which users streams a user can access, then disable or edit the security rules"
    seventeen.explanation = "Same as Correct Option"
    questions.append(seventeen)
    
    
    //18
    let eighteen = Questions()
    eighteen.question = "What is the significance of Streams in Qlik Sense QMC?"
    
    eighteen.optionA = "A stream enables the user to read and/or publish apps, sheets and stories."
    eighteen.optionB = "Streams are like Active Directory group"
    eighteen.optionC = "Streams decide who can access a Qlik Sense Report"
    eighteen.optionD = "Streams allows a user to view any number of reports in QLik Sense Server"
    
    eighteen.rightAnswer = "A stream enables the user to read and/or publish apps, sheets and stories."
    eighteen.explanation = "Same as correct option"
    questions.append(eighteen)
    
    
    //19
    let nineteen = Questions()
    nineteen.question = "In Internet Explorer icons in the Qlik Sense Hub and QMC are not properly displayed, how can you fix it?"
    
    nineteen.optionA = "Use Google Chrome instead"
    nineteen.optionB = "Use Mozilla FireFox Instead"
    nineteen.optionC = "Add website address of Hub and QMC to the Trusted Sites in Internet Explorer"
    nineteen.optionD = "Add Security Level in Internet Explorer to High"
    
    nineteen.rightAnswer = "Add website address of Hub and QMC to the Trusted Sites in Internet Explorer"
    nineteen.explanation = "Same as Correct Option"
    questions.append(nineteen)
    
    
    //20
    let twenty = Questions()
    twenty.question = "You can Access the Qlik Sense Hub, but cannot see any streams at all, what could be the cause and how to fix it?"
    
    twenty.optionA = "That means the user has no access type, so allocate a user access or add user to a login access group"
    twenty.optionB = "That means the user has no access type, so allocate a user to a stream"
    twenty.optionC = "Modify the security rule for the stream"
    twenty.optionD = "By restarting QRS services it can be fixed"
    
    twenty.rightAnswer = "That means the user has no access type, so allocate a user access or add user to a login access group"
    twenty.explanation = "Same as Correct Option"
    questions.append(twenty)
    
    //21
    let twentyone = Questions()
    twentyone.question = "How would you create a Login Access Rule in Qlik Sense QMC?"
    
    twentyone.optionA = "Visit http://<serveraddress>/qmc/loginaccessrules, then Create New, then Edit and then add a rule to License rules"
    twentyone.optionB = "Visit http://<serveraddress>/qmc/loginaccessrules, then add a rule to License rules"
    twentyone.optionC = "Visit http://<serveraddress>/qmc/loginaccessrules, then add rules to advanced tab"
    twentyone.optionD = "Visit http://<serveraddress>/qmc/loginaccessrules, then add rules to basic tab"
    
    twentyone.rightAnswer = "Visit http://<serveraddress>/qmc/loginaccessrules, then Create New, then Edit and then add a rule to License rules"
    twentyone.explanation = "Same as correct option"
    questions.append(twentyone)
    
    
    //22
    let twentytwo = Questions()
    twentytwo.question = "How would you publish a New Qlik Sense application in Qlik Sense QMC?"
    
    twentytwo.optionA = "Visit http://<serveraddress>/qmc/apps, then Create New Application in corresponding Stream, press Publish button"
    twentytwo.optionB = "Visit http://<serveraddress>/qmc/apps, Select App, then press Publish button"
    twentytwo.optionC = "Visit http://<serveraddress>/qmc/apps, Import the new app, select the app and then press Publish button, then select corresponding Stream"
    twentytwo.optionD = "Visit http://<serveraddress>/qmc/apps, Select Streams, then select the app and then press Publish button"
    
    twentytwo.rightAnswer = "Visit http://<serveraddress>/qmc/apps, Import the new app, select the app and then press Publish button, then select corresponding Stream"
    twentytwo.explanation = "Same as Correct Option"
    questions.append(twentytwo)
    
    
    //23
    let twentythree = Questions()
    twentythree.question = "How would you give only Read access to a User group in Qlik Sense QMC?"
    
    twentythree.optionA = "Visit http://<serveraddress>/qmc/securityrules, set access to 'Read only'"
    twentythree.optionB = "Visit http://<serveraddress>/qmc/securityrules, uncheck other box but 'Read only'"
    twentythree.optionC = "Visit http://<serveraddress>/qmc/securityrules, add users to read only tab"
    twentythree.optionD = "Visit http://<serveraddress>/qmc/securityrules, in basic tab, check only 'Read' box"
    
    twentythree.rightAnswer = "Visit http://<serveraddress>/qmc/securityrules, in basic tab, check only 'Read' box"
    twentythree.explanation = "Same as correct option"
    questions.append(twentythree)
    
    //--------
    
    return questions
    
}
