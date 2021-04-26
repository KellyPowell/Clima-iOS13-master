//
//  ClimaTests.swift
//  ClimaTests
//
//  Created by Kelly Powell on 4/25/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import XCTest
@testable import Clima

class ClimaTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testWeatherModelComputedProperties() {
        let testTemp = 92.18918276
        let testCondition = 202
        let testModel = WeatherModel.init(conditionId: testCondition, cityName: "London", temperature: testTemp)
        XCTAssertEqual(testModel.temperatureString, "92.2")
        XCTAssertEqual(testModel.conditionName, "cloud.bolt")
    }
    
    func testWeatherModelTemperature() {
        let testModel = WeatherModel.init(conditionId: 800, cityName: "Portland", temperature: 68.27218293263)
        XCTAssertEqual(testModel.temperatureString, "68.3")
    }
    
    func testWeatherModelConditionName() {
        //let testCondition = 730
        let testModel = WeatherModel.init(conditionId: 730, cityName: "Austin", temperature: 87.123154)
        XCTAssertEqual(testModel.conditionName, "cloud.fog")
        XCTAssertNotEqual(testModel.conditionName, "cloud.bolt")
    }

    
    func testParseValidJSON() {
       
    }
    
    func testParseJSONWithoutExpectedValues() {
        
        
    }
    
    func testParseNonJSONString() {
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
