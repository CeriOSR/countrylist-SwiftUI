//
//  ApiService.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import Foundation

protocol ApiServiceProtocol {
    func fetchCountries(
        onSuccess: @escaping SingleResult<[Country]>,
        onError: @escaping ErrorResult
    )
}

struct ApiService: ApiServiceProtocol {
    let apiClient: ApiClientProtocol = ApiClient()
    func fetchCountries(
        onSuccess: @escaping SingleResult<[Country]>,
        onError: @escaping ErrorResult
    ) {
        apiClient.fetchCountries(
            onSuccess: onSuccess,
            onError: onError
        )
    }
}
