//
//  CountryDetailsApp.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import SwiftUI

@main
struct CountryDetailsApp: App {
    @StateObject var viewmodel = CountryListViewModel()
    var body: some Scene {
        WindowGroup {
            CountryListView(viewmodel: viewmodel)
        }
    }
}
