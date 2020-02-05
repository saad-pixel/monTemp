//
//  saveTemp.swift
//  monTemp
//
//  Created by saad  on 05/02/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import Foundation

struct saveTemp: Identifiable {
    
    
var id = UUID()

var save: String
        

    static var allSaveTemp: [saveTemp] = []

    static let `default` = Self(save: "10")

    init(save : String) {

        
        self.save = save
       
    }
    
}
