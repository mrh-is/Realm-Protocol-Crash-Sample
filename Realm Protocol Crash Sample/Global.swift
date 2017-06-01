//
//  Global.swift
//  Realm Protocol Crash Sample
//
//  Created by Michael on 6/1/17.
//  Copyright © 2017 Michael Helmbrecht. All rights reserved.
//

import Foundation

var events = [String]()

var currentModel: Model {
    let realm = RealmProvider.readonly()
    if let user = ModelDataService.getCurrent(from: realm) {
        return user
    } else {
        events.append("Getting empty currentModel \(ModelDataService.count(in: realm))")
        return Model()
    }
}
