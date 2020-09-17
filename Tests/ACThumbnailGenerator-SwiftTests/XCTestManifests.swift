import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ACThumbnailGenerator_SwiftTests.allTests),
    ]
}
#endif
