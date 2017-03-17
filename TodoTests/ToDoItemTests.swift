//
//  ToDoItemTests.swift
//  Todo
//
//  Created by Jernej Zorec on 14/03/2017.
//  Copyright © 2017 Jernej Zorec. All rights reserved.
//

import XCTest
@testable import Todo

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Init_TakesTitle() {
        let item = ToDoItem(title: "Foo")
        XCTAssertEqual(item.title, "Foo")
    }
    
    func test_Init_TakesTitleAndDescription() {
        let item = ToDoItem(title: "Foo", itemDescription: "Bar")
        XCTAssertEqual(item.title, "Foo")
        XCTAssertEqual(item.itemDescription, "Bar")
    }
    
    func test_Init_WhenGivenTimestamp_SetsTimestamp() {
        let item = ToDoItem(title: "Foo", itemDescription: "Bar", timestamp: 0.0)
        XCTAssertEqual(item.title, "Foo")
        XCTAssertEqual(item.itemDescription, "Bar")
        XCTAssertEqual(item.timestamp, 0.0, "should set timestamp")
    }
    
    func test_Items_WhenOneLocationIsNilAndTheOtherIsnt_AreNotEqual() {
        var first = ToDoItem(title: "", location: Location(name: "Foo"))
        var second = ToDoItem(title: "", location: nil)
        XCTAssertNotEqual(first, second)
        
        first = ToDoItem(title: "", location: nil)
        second = ToDoItem(title: "", location: Location(name: "Foo"))
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenTimestampsDiffer_AreNotEqual() {
        let first = ToDoItem(title: "Foo", timestamp: 1.0)
        let second = ToDoItem(title: "Foo", timestamp: 0.0)
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenDescriptionsDiffer_AreNotEqual() {
        let first = ToDoItem(title: "Foo", itemDescription: "Bar")
        let second = ToDoItem(title: "Foo", itemDescription: "Baz")
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenTitlesDiffer_AreNotEqual() {
        let first = ToDoItem(title: "Foo")
        let second = ToDoItem(title: "Bar")
        XCTAssertNotEqual(first, second)
    }
    
}
