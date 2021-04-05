//
//  ContentView.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import SwiftUI

struct CountryListView: View {
    
    @ObservedObject var viewmodel: CountryListViewModel
    @State var searchText: String = ""
    @State var isSearching: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                SearchBarView(searchText: $searchText, isSearching: $isSearching)
                ForEach(viewmodel.countries.filter { "\($0.name)".contains(searchText) || searchText.isEmpty }, id: \.code) { country in
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
