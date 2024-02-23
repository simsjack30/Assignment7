//
//  PersonDateManager.swift
//  Assignment7
//
//  Created by John Sims on 2/22/24.
//

import Foundation

struct PersonDateManager {
    static let shared = PersonDateManager()
    
    var dates = [
    PersonDate("Jack Sims","07/17/1995"),
    PersonDate("Taylor Swift","12/13/1989"),
    PersonDate("Christiano Ronaldo","02/05/1985"),
    PersonDate("Michael Jackson","08/29/1958"),
    PersonDate("Beyonce","09/04/1981"),
    PersonDate("Bill Murray","09/21/1950"),
    PersonDate("Dr. Seuss","03/02/1904"),
    PersonDate("Thomas Jefferson","04/13/1743"),
    PersonDate("Kesha","03/01/1987"),
    PersonDate("Barack Obama","08/04/1961")
    ]
    
    private init() {}
}
