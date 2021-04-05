//
//  ContentView.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import SwiftUI

struct CountryListView: View {
    
    @ObservedObject var viewmodel: CountryListViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewmodel.countries, id: \.code) { country in
                    let detailsView = CountryDetailsView(country: country)
                    NavigationLink(
                        destination: detailsView,
                        label: {
                            HStack {
                                Text("\(country.name)")
                                    .padding(.leading)
                                Text("\(country.emoji)")
                            }
                        })
                }
            }
            .navigationBarTitle("Countries", displayMode: .large)
            .toolbar(content: {
                Button(action: {
                    viewmodel.fetchCountries()
                }, label: {
                    Text("Get Countries")
                })
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView(viewmodel: CountryListViewModel(isForTest: false))
    }
}
