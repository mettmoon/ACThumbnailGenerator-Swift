import XCTest
import UIKit

@testable import ACThumbnailGenerator_Swift

final class ACThumbnailGenerator_SwiftTests: XCTestCase {
    var generator: ACThumbnailGenerator!
    
    let maxImages = 10
    let expectation = XCTestExpectation(description: "testExample")

    func testExample() {
        let streamUrl = URL(string: "https://p-events-delivery.akamaized.net/18oijbasfvuhbfsdvoijhbsdfvljkb6/m3u8/hls_vod_mvp.m3u8")!
        generator = ACThumbnailGenerator(streamUrl: streamUrl)
        generator.delegate = self
        
        for i in 1...maxImages {
            generator.captureImage(at: Double(300 * i))
        }
        
        wait(for: [expectation], timeout: 5.0)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

extension ACThumbnailGenerator_SwiftTests: ACThumbnailGeneratorDelegate {
    func generator(_ generator: ACThumbnailGenerator, didCapture image: UIImage, at position: Double) {
        XCTAssert(true)
        expectation.fulfill()
    }
}


