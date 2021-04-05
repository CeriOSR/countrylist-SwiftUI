//
//  CountryDetailsApp.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import SwiftUI

@main
struct CountryDetailsApp: App {
    @StateObject var viewmodel = CountryListViewModel(isForTest: false)
    var body: some Scene {
        WindowGroup {
            CountryListView(viewmodel: viewmodel)
        }
    }
}
