//
//  Student.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Student {
    private(set) var id: Int
    private var name: String
    private var lastName: String
    private var age: Int
    private(set) var subjects: [Subject]
    private var teacher: Teacher?
    
    
    
    init(id: Int, name: String, lastName: String, age: Int) {
        self.id = id
        self.name = name
        self.lastName = lastName
        self.age = age
        self.subjects = []
        
    }
    
    // Метод для получения предмета
    func addSubject(subjectName: String, grade: String) {
        let subject = Subject(subjectName: subjectName, grade: grade)
        subjects.append(subject)
    }
    // Метод для установки возраста студента
    
    func setAge(age: Int) {
        self.age = age
    }
    // Метод для установки имени студента
    
    func studentName(name: String, lastName: String ) {
        self.name = name
        self.lastName = lastName
    }
    
    func getName() -> String {
        return name
    }
    
    func getLastName() -> String {
        return lastName
    }
    
    // Метод для связывания студента с учителем
    
    func assignTeacher(teacher: Teacher) {
        self.teacher = teacher
        teacher.addStudent(student:self)
    }
    
    func studentInfo() {
        var info = "ID: \(id), Name: \(name), Last Name: \(lastName)"
        for subject in subjects {
            info += ", Subject: \(subject.subjectName), Grade: \(subject.grade)"
        }
        if let teacher = self.teacher {
            info += ", Student Teacher: \(teacher.getFirstName()) \(teacher.getLastName())"
        } else {
            info += "(Оценку ещё не поставили)"
        }
        print(info)
    }
}

