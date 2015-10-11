import XCTest

class DopplerTests : XCTestCase {
  func testRadarType() {
  	let radar = Radar(radarNumber: 42, title: "yolo", body: "body",
  		product: "none", version: "1.0", classification: "bug", reproducible: "always")

  	XCTAssertEqual(radar.radarNumber, 42)
  	XCTAssertEqual(radar.title, "yolo")
  }

  func testFetchRadar() {
  	let expectation = expectationWithDescription("Fetch radar")

  	Doppler.radar(10192655) { (radar, error) in
  	  XCTAssertNil(error)
  	  XCTAssertNotNil(radar)

  	  if let radar = radar {
  	  	XCTAssertEqual(radar.radarNumber, 10192655)
  	  	XCTAssertEqual(radar.title, "Value of UIKeyboardFrameEndUserInfoKey is a CGPoint on iOS 5")
  	  	XCTAssertEqual(radar.product, "iPad")
  	  }

  	  expectation.fulfill()
  	}

  	waitForExpectationsWithTimeout(10 /*task.originalRequest!.timeoutInterval*/) { error in
  	  if let error = error {
  	  	print("Error: \(error.localizedDescription)")
  	  }
    }
  }
}
