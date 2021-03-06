//
//  StateListView.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import SwiftUI

struct StateListView: View {
    var country: Country
    var body: some View {
        ZStack {
            List(country.states, id: \.name) { state in
                Text(state.name)
                    .padding(.leading)
            }
            if country.states.isEmpty {
                Text("\(country.name) has no states or provinces.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding(24)
                    
            }
        }
        
    }
}

struct StateListView_Previews: PreviewProvider {
    static var previews: some View {
        StateListView(country: SampleCountry.shared.country)
    }
}
