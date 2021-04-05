//
//  MockApiService.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import Foundation

struct MockApiService: ApiServiceProtocol {
    var fetchError: Error = NSError(domain: "", code: -1, userInfo: [:])
    func fetchCountries(onSuccess: @escaping SingleResult<[Country]>, onError: @escaping ErrorResult) {
        onSuccess([Country(unsafeResultMap: .init())])
        onError(fetchError)
    }
}
