import XCTest
import TitanJSONRequestBody
import TitanCore

class TitanJSONRequestBodyTests: XCTestCase {
    func testExample() {
      let jsonBody = "{\"data\": [1, 2, 3]}"
      let req: RequestType = Request(method: "POST", path: "/ingest", body: jsonBody, headers: [])
      guard let json = req.json as? Dictionary<String, Array<Int>> else {
        XCTFail("Received: \(req.json)")
        return
      }
      XCTAssertEqual(json["data"]!, [1, 2, 3])
    }


    static var allTests : [(String, (TitanJSONRequestBodyTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
