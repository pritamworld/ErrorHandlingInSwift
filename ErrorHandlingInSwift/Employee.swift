//
//  Employee.swift
//  ErrorHandlingInSwift
//
//  Created by moxDroid on 2019-06-17.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import Foundation
class Employee {
    var employeeId: Int
    var employeeName: String
    var employeeEmail: String
    var employeeSalary: Double
    
    init() {
        self.employeeId = 0
        self.employeeName = String()
        self.employeeEmail = String()
        self.employeeSalary = 1000.0
    }
    
    init?(employeeId: Int, employeeName: String, employeeEmail: String, employeeSalary: Double) {
        self.employeeId = employeeId
        self.employeeName = employeeName
        self.employeeEmail = employeeEmail
        
        if(employeeSalary < 1000.0)
        {
            return nil
        }
        self.employeeSalary = employeeSalary
    }
    
    func setSalary(salary: Double) throws
    {
        if salary < 1000
        {
            //throw EmployeeError.InvalidSalary
            throw EmployeeError.InvalidSalaryWithMessage(msg: "Invalid salary : \(salary) < 1000")
        }
        
        self.employeeSalary = salary
    }
}
