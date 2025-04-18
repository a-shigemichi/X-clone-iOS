import UIKit

class MainRootViewController: UITabBarController {

  // MARK: - Public Props

  public static var sharedInstance = MainRootViewController()

  // MARK: - Private Props

  private enum TabBarItemTag: Int {
    case home
    case search
    case communities
    case notifications
    case messages
  }

  // MARK: - View Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    setUpTabBar()
    setUpSubviews()
  }

  // MARK: - Private API

  private func setUpTabBar() {
    tabBar.backgroundColor = .systemBackground
  }

  private func setUpSubviews() {
    let homeNavigationController = UINavigationController(rootViewController: HomeViewController())
    homeNavigationController.tabBarItem = UITabBarItem(
      title: "", image: UIImage(systemName: "house"), tag: TabBarItemTag.home.rawValue)

    let searchNavigationController = UINavigationController(
      rootViewController: SearchViewController())
    searchNavigationController.tabBarItem = UITabBarItem(
      title: "", image: UIImage(systemName: "magnifyingglass"), tag: TabBarItemTag.search.rawValue)

    let communitiesNavigationController = UINavigationController(
      rootViewController: CommunitiesViewController())
    communitiesNavigationController.tabBarItem = UITabBarItem(
      title: "", image: UIImage(systemName: "person.2"), tag: TabBarItemTag.communities.rawValue)

    let notificationsNavigationController = UINavigationController(
      rootViewController: NotificationsViewController())
    notificationsNavigationController.tabBarItem = UITabBarItem(
      title: "", image: UIImage(systemName: "bell"), tag: TabBarItemTag.notifications.rawValue)

    let messagesNavigationController = UINavigationController(
      rootViewController: MessagesViewController())
    messagesNavigationController.tabBarItem = UITabBarItem(
      title: "", image: UIImage(systemName: "envelope"), tag: TabBarItemTag.messages.rawValue)

    viewControllers = [
      homeNavigationController, searchNavigationController, communitiesNavigationController,
      notificationsNavigationController, messagesNavigationController,
    ]
  }
}
