//
//  main.swift
//  ErrorHandlingInSwift
//
//  Created by moxDroid on 2019-06-17.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import Foundation

var e1 = Employee()
print(e1.employeeId)

var e2 = Employee(employeeId: 1, employeeName: "Pritesh", employeeEmail: "p@p.com", employeeSalary: 500)

if let e = e2
{
    print(e.employeeId)
}

var e3 = Employee(employeeId: 2, employeeName: "Pritesh", employeeEmail: "p@p.com", employeeSalary: 600)

do{

    var e4 = Employee(employeeId: 3, employeeName: "Pritesh", employeeEmail: "p@p.com", employeeSalary: 10000)

    if let e = e4
    {
        print(e.employeeSalary)
        //try e.setSalary(salary: 500)
    }
    
    try e4!.setSalary(salary: 700)
    print(e4!.employeeSalary)
}
catch EmployeeError.InvalidEmail
{
    print("Invalid Email ID")
}
catch EmployeeError.InvalidSalary
{
    print("Invalid Salary")
}
catch EmployeeError.InvalidSalaryWithMessage(let msg){
    print(msg)
}
catch
{
    print(error.localizedDescription)
}

/*
guard let e = e3 else
{
    print("FALSE")
    return
}
 */

do{
    let s1 = try? Student(studentId: 1, studentName: "Pritesh", studentEmail: "p@p.com")
    
    if let s = s1
    {
        print(s.studentEmail)
        //s.setEmail(email: "newemail@test.com")
        s.setEmail(email: "ivemail")
        
         print(s.studentEmail)
    }else{
        throw StudentError.InvalidEmail
    }
    
    
}
catch StudentError.InvalidEmail
{
    print("Error : Email")
}
catch
{
    print(error.localizedDescription)
}


