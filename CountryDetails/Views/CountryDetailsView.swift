//
//  CountryDetailsView.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import SwiftUI

struct CountryDetailsView: View {
    let country: Country
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("\(country.native)")
                    .padding(10)
                    .font(.title)
                Text(country.emoji)
                    .font(.system(size: 50))
                Text("Country Code: \(country.code)")
                    .padding(EdgeInsets(top: 20, leading: 10, bottom: 5, trailing: 10))
                Text("Country Phone Code: \(country.phone)").padding(5)
                Text("Continent: \(country.continent.name),  \(country.continent.code)").padding(5)
                if let capital = country.capital {
                    Text("Capital: \(capital)").padding(5)
                }
                if let currency = country.currency {
                    Text("Currency: \(currency)").padding(5)
                }
                Spacer()
                VStack {
                    let languageListView = LanguageListView(country: country)
                    NavigationLink(
                        destination: languageListView,
                        label: {
                            Text("Language")
                    })
                    .padding(10)
                    let stateView = StateListView(country: country)
                    NavigationLink(
                        destination: stateView,
                        label: {
                            Text("States")
                    })
                    .padding(10)
                }
                Spacer(minLength: 100)
            }
            
        }
        .navigationBarTitle("\(country.name)", displayMode: .inline)
    }
}

struct CountryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailsView(country: SampleCountry.shared.country)
    }
}
