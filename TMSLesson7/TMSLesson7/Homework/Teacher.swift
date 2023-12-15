//
//  Teacher.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Teacher {
    private var id: Int
    private var firstName: String
    private var lastName: String
    private var subjectsTaught: [Subject]
    private var studentsTaught: [Student]
    
    init(id: Int, firstName: String, lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.subjectsTaught = []
        self.studentsTaught = []
    }
    
    // Метод для добавления предмета, который ведет учитель
    func addSubjectTaught(subjectName: String) {
        let subject = Subject(subjectName: subjectName, grade: "")
        subjectsTaught.append(subject)
    }
    
    
    func addStudent(student: Student) {
        studentsTaught.append(student)
    }
    
    // Метод для установки оценки ученику по определенному предмету
    func setGrade(for student: Student, subjectName: String, grade: String) {
        student.addSubject(subjectName: subjectName, grade: grade) // Устанавливаем оценку студенту
        if !self.studentsTaught.contains(where: { $0.id == student.id }) {
            self.studentsTaught.append(student) // Добавляем студента, если он еще не был добавлен
        }
    }
    
    
    func teacherInfo() -> String {
        var info = ""
        for student in studentsTaught {
            for subject in student.subjects {
                info += ("ID: \(id), Name: \(firstName), LastName: \(lastName), Subject: \(subject.subjectName), Student Name: \(student.getName()), Student Last Name: \(student.getLastName()), Grade: \(subject.grade)\n")
            }
        }
        print(info)
        return info
    }
    
    
    func getFirstName() -> String {
        return firstName
    }
    
    func getLastName() -> String {
        return lastName
    }
    
    
}



    
    

