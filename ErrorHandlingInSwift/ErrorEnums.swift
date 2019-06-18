//
//  ErrorEnums.swift
//  ErrorHandlingInSwift
//
//  Created by moxDroid on 2019-06-17.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import Foundation
enum EmployeeError: Error
{
    case InvalidSalary
    case InvalidEmail
    case InvalidSalaryWithMessage(msg: String)
}

enum StudentError: Error
{
    case InvalidEmail
}

extension String
{
    func isValidEmail() -> Bool
    {
        //Write code tio validate email
        return true
    }
}
