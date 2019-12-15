//
//  Dataservices.swift
//  ProfileApp
//
//  Created by Fabio Quintanilha on 12/13/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import Foundation

class DataService {
    
    static func dataFromFile(_ filename: String) -> Data? {
        @objc class TestClass: NSObject { }
        
        let bundle = Bundle(for: TestClass.self)
        if let path = bundle.path(forResource: filename, ofType: "json") {
            return (try? Data(contentsOf: URL(fileURLWithPath: path)))
        }
        return nil
    }

}
