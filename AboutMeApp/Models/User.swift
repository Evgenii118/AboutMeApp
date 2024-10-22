//
//  User.swift
//  AboutMeApp
//
//  Created by Ewgeniy Izyurov on 18.10.2024.
//

struct User {
    let name: String
    let password: String
    let person: Person
    
    static func getInfoAboutPerson() -> User {
        User(
            name: "1",
            password: "1",
            person: Person(
                name: "Evgenii",
                lastName: "Iziurov",
                age: 40,
                company: "ГК Автомое",
                post: "Логист",
                hobby: """
            Три года назад сдал на категорию А.
        Год назад купил мотоцикл и теперь в свободное время катаюсь на мотоцикле.
        """
            )
        )
    }
}

struct Person {
    let name: String
    let lastName: String
    let age: Int
    
    let company: String
    let post: String
    
    let hobby: String
    
}


