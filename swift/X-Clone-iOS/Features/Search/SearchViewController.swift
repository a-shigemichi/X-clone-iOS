import UIKit

class SearchViewController: ViewControllerWithUserIconButton {

  // MARK: - Private Props

  private enum LocalizedString {
    static let title = String(localized: "Search")
  }

  private let label: UILabel = {
    let label = UILabel()
    label.text = LocalizedString.title
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  private lazy var profileIconButton: UIBarButtonItem = {
    let button = UIBarButtonItem(
      title: "", style: .plain, target: self, action: #selector(showSideMenu))
    button.tintColor = .black
    button.image = UIImage(systemName: "person.circle.fill")
    return button
  }()

  // MARK: - Private API

  private func setUpSubviews() {
    view.backgroundColor = .systemBackground
    view.addSubview(label)

    NSLayoutConstraint.activate([
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
    ])
  }

  private func setUpNavigationHeader() {
    navigationController?.navigationBar.tintColor = .black
    navigationItem.title = LocalizedString.title
    navigationItem.leftBarButtonItems = [profileIconButton]
  }

  // MARK: - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setUpSubviews()
    setUpNavigationHeader()
  }
}

#Preview {
  SearchViewController()
}
