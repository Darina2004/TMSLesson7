//
//  ViewController.swift
//  TMSLesson7
//
//  Created by Mac on 8.12.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mathTeacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
        mathTeacher.addSubjectTaught(subjectName: "Match")
        
        let student1 = Student(id: 1, name: "Alice", lastName: "Simpson", age: 20)
        let student2 = Student(id: 2, name: "Bob", lastName: "Maguire", age: 21)
        
        student1.assignTeacher(teacher: mathTeacher)
        student2.assignTeacher(teacher: mathTeacher)
        
        mathTeacher.setGrade(for: student1, subjectName: "Math", grade: "A")
        mathTeacher.setGrade(for: student2, subjectName: "Math", grade: "B+")
        
        student1.studentInfo()
        student2.studentInfo()
        mathTeacher.teacherInfo()
        
        
        
        //        Реализуйте методы в классе Student для добавления предметов, установки оценок и получения информации о студенте.
        //        Реализуйте методы в классе Teacher с указанием предметов, установки оценок и получения информации о студенте которому ставишь оценку.
        //
        //        Создайте функции для изменения возраста и имени студента, используя соответствующие методы доступа.
        //
        //        Создайте функции для изменения возраста и имени преподавателя и его предмет который он преподаёт, используя соответствующие методы доступа.
        //
        //         Итог: Создайте несколько экземпляров студентов, преподавателей. Добавьте студентам предметы и установите оценки.
        //         Вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет) (Оценка) (Кто поставил оценку)
        //        У преподавателя вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет который ведет) (Студент) (Оценка которую поставил преподаватель)
        //
        //         Создание учителя
        //        let mathTeacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
        //        mathTeacher.addSubjectTaught(subjectName: "Math")
        //
        //         Создание студентов
        //        let student1 = Student(id: 1, name: "Alice", lastName: "Simpson", age: 20)
        //        let student2 = Student(id: 2, name: "Bob", lastName: "Maguire", age: 21)
        //
        //         Связывание студентов с учителем
        //        student1.assignTeacher(teacher: mathTeacher)
        //        student2.assignTeacher(teacher: mathTeacher)
        //
        //         Учитель ставит оценки студентам по предметам
        //        mathTeacher.setGrade(for: student1, subjectName: "Math", grade: "A")
        //        mathTeacher.setGrade(for: student2, subjectName: "Math", grade: "B+")
        
    }
    
    
}

