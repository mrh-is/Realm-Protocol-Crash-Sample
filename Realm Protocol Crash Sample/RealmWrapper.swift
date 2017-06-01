//
//  RealmWrapper.swift
//  Realm Protocol Crash Sample
//
//  Created by Michael on 5/31/17.
//  Copyright © 2017 Michael Helmbrecht. All rights reserved.
//

import RealmSwift

protocol ReadonlyRealm {
    func objects<T: Object>(_ type: T.Type) -> Results<T>
}
extension Realm: ReadonlyRealm {}

enum RealmProvider {
    static func readonly() -> ReadonlyRealm {
        return try! Realm()
    }
}

enum ModelDataService {
    static func getCurrent(from realm: ReadonlyRealm) -> Model? {
        let models = realm.objects(Model.self)
        if let model = models.first {
            return model
        } else {
            events.append("Getting empty currentModel \(count(in: realm))")
            return nil
        }
    }

    static func count(in realm: ReadonlyRealm) -> Int {
        // Printing anything non-literal here seems to fix the issue
//        print(#file, #function, #line)
        return realm.objects(Model.self).count
    }
}
