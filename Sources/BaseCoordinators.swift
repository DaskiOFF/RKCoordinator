open class BaseCoordinator {
    open var childCoordinators: [Coordinator] = []
    
    // MARK: - Manage
    public func remove(_ coordinator: Coordinator) {
        guard let index = childCoordinators.index(where: { $0 === coordinator}) else { return }
        childCoordinators.remove(at: index)
    }
}

// MARK: - 
open class BaseAppCoordinator: BaseCoordinator {
    open var window: UIWindow
    
    // MARK: - Init
    public init(window: UIWindow) {
        self.window = window
    }
}

// MARK: -
open class BaseFlow<RootViewControllerType> : BaseCoordinator {
    open var rootViewController: RootViewControllerType
    
    // MARK: - Init
    public init(rootViewController: RootViewControllerType) {
        self.rootViewController = rootViewController
    }
}
public typealias BaseNavigationFlow = BaseFlow<UINavigationController>
