import XCTest
@testable import RKCoordinator

class BaseCoordinatorTests: XCTestCase {
    class Coord: Coordinator {
        func start() {}
    }
    
    var baseCoordinator: BaseCoordinator!
    
    override func setUp() {
        super.setUp()
        baseCoordinator = BaseCoordinator()
    }
    
    override func tearDown() {
        baseCoordinator = nil
        
        super.tearDown()
    }
    
    func testRemoveCoordinator() {
        let coord1 = Coord()
        let coord2 = Coord()
        
        XCTAssert(coord1 !== coord2)
        
        baseCoordinator.add(coord1)
        baseCoordinator.add(coord2)
        XCTAssert(baseCoordinator.childCoordinators.count == 2)
        
        baseCoordinator.remove(coord1)
        XCTAssert(baseCoordinator.childCoordinators.count == 1)
        XCTAssert(baseCoordinator.childCoordinators[0] === coord2)
        XCTAssert(baseCoordinator.childCoordinators[0] !== coord1)
    }
}
