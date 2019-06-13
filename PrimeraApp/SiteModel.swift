//
//  SItes.swift
//  PrimeraApp
//
//  Created by ALEXIS RIVAS FERNANDEZ on 07/06/2019.
//  Copyright © 2019 ALEXIS RIVAS FERNANDEZ. All rights reserved.
//
typealias Id = String
typealias Name = String

import Foundation

class SiteModel {
    var sites: [Site] = []
    
    func listSites() -> [Site] {
        guard let jsonData = SitesMock.siteJson.data(using: .utf8) else { return sites }
        do{
            sites = try JSONDecoder().decode([Site].self, from: jsonData)
            print("Ok Json Decoder")
        } catch {
            print("It failed!!")
        }
        
        return sites
    }
}

struct Site: Codable{
    let id: Id
    let name: Name
}
