//
//  StorageManager.swift
//  PlaceList
//
//  Created by Yurii Bilyar on 8/27/20.
//  Copyright © 2020 Yurii Bilyar/Postevka. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}

