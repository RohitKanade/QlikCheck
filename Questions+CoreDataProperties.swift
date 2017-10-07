//
//  Questions+CoreDataProperties.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 07/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import Foundation
import CoreData


extension Questions {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Questions> {
        return NSFetchRequest<Questions>(entityName: "Questions")
    }

    @NSManaged public var question: String?
    @NSManaged public var optionA: String?
    @NSManaged public var optionB: String?
    @NSManaged public var optionC: String?
    @NSManaged public var optionD: String?
    @NSManaged public var rightAnswer: String?
    @NSManaged public var explanation: String?

}
