//
//  LanguageListView.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import SwiftUI

struct LanguageListView: View {
    var country: Country
    var body: some View {
        ZStack {
            List(country.languages, id: \.code) { language in
                if let name = language.name {
                    Text(name)
                        .padding(.leading)
                }
            }
            if country.languages.isEmpty {
                Text("This country has no official language.")
                    .foregroundColor(.secondary)
            }
        }
        
    }
}

struct LanguageListView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageListView(country: SampleCountry.shared.country)
    }
}
