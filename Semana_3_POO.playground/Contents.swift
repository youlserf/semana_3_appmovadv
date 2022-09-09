import UIKit

struct User {
    let name: String
    let lastname: String
    let birthDate: String
    let weight: Float?
    let height: Float?
    let documentNumber: String
    
    init(
        name: String,
        lastname: String,
        birthDate: String,
        weight: Float,
        height: Float,
        documentNumber: String
    )  {
        self.name = name
        self.lastname = lastname
        self.birthDate = birthDate
        self.weight = weight
        self.height = height
        self.documentNumber = documentNumber
    }
}

class Person {
    let user: User
    
//    init() => constructor
    init(user: User)  {
        self.user = user
    }
    
    func description() -> String {
        return "Hi my name is \(user.name) and I was born in \(user.birthDate)"
    }
}

/// Como hacemos para hereder una clase ":"
class Teacher: Person {
    var salary: Float
    var courses: [String]
    var grade: String
    
    init(salary: Float, grade: String, courses: [String], user: User) {
        self.salary = salary
        self.grade = grade
        self.courses = courses
        super.init(user: user)
    }
    
    override func description() -> String {
        return "Hi my name is \(user.name) and my favorite course is \(courses[0])"
    }
    
    func hello() -> String {
        return "Hi my name is \(user.name)"
    }
    
    
}

let user: User = User(
    name: "Youlserf",
    lastname: "Cardenas",
    birthDate: "2011-03-11",
    weight: 43.2,
    height: 1.34,
    documentNumber: "88888888"
)
//permite reutilizar a user

let person: Person = Person( user: user )

let teacher: Teacher = Teacher (
    salary: 8500.00,
    grade: "Magister",
    courses: ["Economia", "Ciencias"],
    user: person.user
)

print(person.description())
print(teacher.description())
print(teacher.hello())

