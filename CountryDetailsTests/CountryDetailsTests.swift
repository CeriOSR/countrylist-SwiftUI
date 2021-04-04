//
//  CountryDetailsTests.swift
//  CountryDetailsTests
//
//  Created by Rey Cerio on 2021-04-03.
//

import XCTest
@testable import CountryDetails

class CountryDetailsTests: XCTestCase {
    var viewmodel: CountryListViewModel!
    let mockApiService: ApiServiceProtocol = MockApiService()
    override func setUp() {
        viewmodel = CountryListViewModel(isForTest: false, service: mockApiService)
    }

    
    func testViewModelEmptyState() throws {
        let viewmodel = CountryListViewModel.emptyState()
        XCTAssertTrue(viewmodel.countries.count == 0, "Countries count should be empty")
    }
    
    func test_Fetch_Countries_On_Success() throws {
        var countries: [Country]?
        var error: Error?
        mockApiService.fetchCountries { list in
            countries = list
        } onError: { err in
            error = err
        }

        XCTAssertTrue(countries != nil)
        XCTAssertTrue(error != nil)
    }
}
