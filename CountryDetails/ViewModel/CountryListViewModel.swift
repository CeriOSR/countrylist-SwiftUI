//
//  CountryListViewModel.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import Foundation

class CountryListViewModel: ObservableObject {
    @Published var countries: [Country] = []
    private var service: ApiServiceProtocol
    private var isForTest: Bool = false
    init(isForTest: Bool, service: ApiServiceProtocol = ApiService()) {
        self.service = service
        self.isForTest = isForTest
        guard !self.isForTest else { return }
        fetchCountries()
    }
    
    func fetchCountries() {
        service.fetchCountries { [weak self] countries in
            guard let s = self else { return }
            s.countries = countries.compactMap { $0 }
            s.countries.sort { $0.name < $1.name }
            SampleCountry.shared.country = s.countries.first
        } onError: { error in
            // handle error here
            print(error)
        }
    }
    
    static func emptyState(_ apiService: ApiServiceProtocol) -> CountryListViewModel {
        let viewmodel = CountryListViewModel(isForTest: true, service: apiService)
//        viewmodel.countries = []
        return viewmodel
    }
}

class SampleCountry {
    static let shared = SampleCountry()
    var country: Country!
}
