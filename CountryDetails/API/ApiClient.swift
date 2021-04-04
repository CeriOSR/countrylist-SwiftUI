//
//  ApiManager.swift
//  CountryDetails
//
//  Created by Rey Cerio on 2021-04-03.
//

import Foundation
import Apollo

public typealias Country = CountryListQuery.Data.Country
public typealias SingleResultWithReturn<T, ReturnType> = ((T) -> ReturnType)
public typealias SingleResult<T> = SingleResultWithReturn<T, Void>
public typealias ErrorResult = SingleResult<Error>

protocol ApiClientProtocol {
    func fetchCountries(
        onSuccess: @escaping SingleResult<[Country]>,
        onError: @escaping ErrorResult
    )
}

class ApiClient: ApiClientProtocol {
    
    let apollo = ApolloClient(url: URL(string: AppConfig.shared.baseUrl)!)
    
    func fetchCountries(
        onSuccess: @escaping SingleResult<[Country]>,
        onError: @escaping ErrorResult
    ) {
        apollo.fetch(query: CountryListQuery()) { result in
            switch result {
            case .success(let result):
                guard let countries = result.data?.countries else { return }
                onSuccess(countries)
            case .failure(let err):
                onError(err)
            }
        }
    }
}

