//
//  LocationTests.swift
//  Todo
//
//  Created by Jernej Zorec on 14/03/2017.
//  Copyright © 2017 Jernej Zorec. All rights reserved.
//

import XCTest
@testable import Todo
import CoreLocation

class LocationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Init_WhenGivenLocation_SetsLocation() {
        let location = Location(name: "Loc")
        let item = ToDoItem(title: "", location: location)
        
        XCTAssertEqual(item.location?.name, "Loc", "should set location")   
    }
    
    func test_Init_WhenGivenCoordinate_SetsCoordinate() {
        let coordinate = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        let location = Location(name: "", coordinate: coordinate)
        let item = ToDoItem(title: "", location: location)
        
        XCTAssertEqual(item.location?.coordinate?.latitude, coordinate.latitude)
        XCTAssertEqual(item.location?.coordinate?.longitude, coordinate.longitude)
    }
    
    func test_EqualLocations_AreEqual() {
        let first = Location(name: "Foo")
        let second = Location(name: "Foo")
        
        XCTAssertEqual(first, second)
    }
    
    func test_Locations_WhenLatitudeDiffers_AreNotEqual() {
        performNotEqualTestWith(firstName: "Foo",
                                secondName: "Foo",
                                firstLongLat: (1.0, 0.0),
                                secondLongLat: (0.0, 0.0))
    }
    
    func test_Locations_WhenNamesDiffer_AreNotEqual() {
        performNotEqualTestWith(firstName: "Foo",
                                secondName: "Bar",
                                firstLongLat: nil,
                                secondLongLat: nil)
    }
    
    func performNotEqualTestWith(firstName: String,
                                 secondName: String,
                                 firstLongLat: (Double, Double)?,
                                 secondLongLat: (Double, Double)?,
                                 line: UInt = #line) {
        
        
        var firstCoord: CLLocationCoordinate2D? = nil
        if let firstLongLat = firstLongLat {
            firstCoord = CLLocationCoordinate2D(latitude: firstLongLat.0,
                                                longitude: firstLongLat.1)
        }
        let firstLocation = Location(name: firstName,
                                     coordinate: firstCoord)
        
        
        var secondCoord: CLLocationCoordinate2D? = nil
        if let secondLongLat = secondLongLat {
            secondCoord = CLLocationCoordinate2D(latitude: secondLongLat.0,
                                                 longitude: secondLongLat.1)
        }
        let secondLocation = Location(name: secondName,
                                      coordinate: secondCoord)
        
        XCTAssertNotEqual(firstLocation, secondLocation)
    }
    
}
