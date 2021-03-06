//
//  User.swift
//  VKClone
//
//  Created by Петр on 04/11/2018.
//  Copyright © 2018 DreamTeam. All rights reserved.
//

import Foundation

// User model
class User: NSObject, NSCoding {
    
    // User name
    @objc var name: String
    
    // User surname
    @objc var surname: String
    
    // User age
    @objc var age: Int
    
    // User status
    @objc var status: String
    
    // Where user from
    @objc var city: String
    
    // Status of user account
    @objc var pageStatus: String
    
    // User main photo
    @objc var avatar: String
    
    // Phone number
    @objc var phone: String
    
    // Graduated from
    @objc var school: String
    
    // User hobbies
    @objc var hobbies: String
    
    // User instagram page
    @objc var instagramLink: String
    
    // User facebook page
    @objc var facebookLink: String
    
    // User vk page
    @objc var vkLink: String
    
    
    init(name: String, surname: String, age: Int, status: String, city: String, pageStatus: String, avatar: String, phone: String, school: String) {
        self.name = name
        self.surname = surname
        self.age = age
        self.status = status
        self.city = city
        self.pageStatus = pageStatus
        self.avatar = avatar
        self.phone = phone
        self.school = school
        hobbies = "Чтение книг, курение дорогих сигар, распитие эксклюзивных алкогольных напитков"
        instagramLink = "www.instagram.com"
        facebookLink = "www.facebook.com"
        vkLink = "www.vk.com"
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: #keyPath(User.name))
        aCoder.encode(surname, forKey: #keyPath(User.surname))
        aCoder.encode(age, forKey: #keyPath(User.age))
        aCoder.encode(status, forKey: #keyPath(User.status))
        aCoder.encode(city, forKey: #keyPath(User.city))
        aCoder.encode(pageStatus, forKey: #keyPath(User.pageStatus))
        aCoder.encode(avatar, forKey: #keyPath(User.avatar))
        aCoder.encode(phone, forKey: #keyPath(User.phone))
        aCoder.encode(school, forKey: #keyPath(User.school))
        aCoder.encode(hobbies, forKey: #keyPath(User.hobbies))
        aCoder.encode(instagramLink, forKey: #keyPath(User.instagramLink))
        aCoder.encode(facebookLink, forKey: #keyPath(User.facebookLink))
        aCoder.encode(vkLink, forKey: #keyPath(User.vkLink))
    }
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: #keyPath(User.name)) as? String ?? ""
        surname = aDecoder.decodeObject(forKey: #keyPath(User.surname)) as? String ?? ""
        age = aDecoder.decodeInteger(forKey: #keyPath(User.age))
        status = aDecoder.decodeObject(forKey: #keyPath(User.status)) as? String ?? ""
        city = aDecoder.decodeObject(forKey: #keyPath(User.city)) as? String ?? ""
        pageStatus = aDecoder.decodeObject(forKey: #keyPath(User.pageStatus)) as? String ?? ""
        avatar = aDecoder.decodeObject(forKey: #keyPath(User.avatar)) as? String ?? ""
        phone = aDecoder.decodeObject(forKey: #keyPath(User.phone)) as? String ?? ""
        school = aDecoder.decodeObject(forKey: #keyPath(User.school)) as? String ?? ""
        hobbies = aDecoder.decodeObject(forKey: #keyPath(User.hobbies)) as? String ?? ""
        instagramLink = aDecoder.decodeObject(forKey: #keyPath(User.instagramLink)) as? String ?? ""
        facebookLink = aDecoder.decodeObject(forKey: #keyPath(User.facebookLink)) as? String ?? ""
        vkLink = aDecoder.decodeObject(forKey: #keyPath(User.vkLink)) as? String ?? ""
    }
    
}
