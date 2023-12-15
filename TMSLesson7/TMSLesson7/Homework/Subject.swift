//
//  Subject.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

struct Subject {
    private(set) var subjectName: String
    private(set) var grade: String
    
    init(subjectName: String, grade: String) {
        self.subjectName = subjectName
        self.grade = grade
    }
    
}
