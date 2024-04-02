//
//  User.swift
//  AboutMeApp
//
//  Created by abd ul’Karim 📚 on 29.03.2024.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "12",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let profession: String
    let job: String
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Ivan",
            surname: "Ivanov",
            age: "33",
            profession: "Financial analyst",
            job: "Arcadia LLC",
            bio: "Ivan Ivanov was born on March 10, 1991 in Moscow into a family of economists. In 1998, he entered the 1st grade of secondary school No. 124 in Moscow. He successfully completed it in 2009. From 2009 to 2014 he studied at the Institute. G.V. Plekhanov at the Faculty of Finance. Since 2014, he has been working as a financial analyst at Arcadia LLC."
        )
    }
    
}
