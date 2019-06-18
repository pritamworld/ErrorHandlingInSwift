//
//  Student.swift
//  ErrorHandlingInSwift
//
//  Created by moxDroid on 2019-06-17.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import Foundation

//
//  Employee.swift
//  ErrorHandlingInSwift
//
//  Created by moxDroid on 2019-06-17.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import Foundation
class Student {
    var studentId: Int
    var studentName: String
    var studentEmail: String
    
    init() {
        self.studentId = 0
        self.studentName = String()
        self.studentEmail = String()
    }
    
    init?(studentId: Int, studentName: String, studentEmail: String) throws {
        self.studentId = studentId
        
       
        if(!studentEmail.isValidEmail())
        {
            throw StudentError.InvalidEmail
        }
        
        self.studentEmail = studentEmail
        
        if( studentName.count <= 6 )
        {
            return nil
        }
        
        self.studentName = studentName
        
    }
    
    func setEmail(email: String?)
    {
        guard (email?.isValidEmail())! == true else {
            return
        }
        
        self.studentEmail = email!
        
    }
}
