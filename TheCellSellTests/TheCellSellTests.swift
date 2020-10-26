import XCTest
//@testable import Doubler

//class Doubler {
//
//    init (){
//
//    }
//
//    func double(n: Int) -> Int {
//        return n * 2
//    }
//
//}


class DoublerTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testDoubler() {
        let x = Doubler()
        XCTAssertEqual(10, x.double(n: 3))  // this should compile but fail the test
    }

}
