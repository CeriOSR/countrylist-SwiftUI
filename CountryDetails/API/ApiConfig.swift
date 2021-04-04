//
//  ApiConfig.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import Foundation

protocol AppConfigType {
  var baseUrl: String { get }
}

struct AppConfig: AppConfigType {
    static let shared = AppConfig()
    
    var baseUrl: String {
        "https://countries.trevorblades.com/graphql"
    }
}
