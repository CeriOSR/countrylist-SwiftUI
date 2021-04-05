//
//  SearchBarView.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-05.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool
    
    var body: some View {
        HStack {
            HStack {
                TextField("Search country", text: $searchText)
                    .padding(.horizontal)
            }
            .onTapGesture {
                isSearching = true
            }
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(6)
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                        .padding(5)
                    Spacer()
                    if isSearching {
                        Button(action: {
                            isSearching = false
                            searchText = ""
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .padding(.horizontal, 5)
                                .padding(.vertical)
                            
                        })
                    }
                }
            )
            .transition(.move(edge: .trailing))
            .animation(.easeInOut)
            if isSearching {
                Button(action: {
                    isSearching = false
                    searchText = ""
                    hideKeyboard()
                }, label: {
                    Text("Cancel")
                        .padding(.trailing, 0)
                        .padding(.leading, 0)
                })
                .transition(.move(edge: .trailing))
                .animation(.easeInOut)
            }
        }
    }
}
