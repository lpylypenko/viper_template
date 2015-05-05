
import Foundation

protocol VIPERViewProtocol: class {
  var presenter: VIPERPresenterProtocol? { get set }
  // PRESENTER -> VIEW
}

protocol VIPERWireFrameProtocol: class {
  var viewController: VIPERViewController? { get set }
  var router: Router? { get set }
  static func setupModule() -> VIPERWireFrameProtocol
  
  // PRESENTER -> WIREFRAME
}

protocol VIPERPresenterProtocol: class {
  var view: VIPERViewProtocol? { get set }
  var interactor: VIPERInteractorInputProtocol? { get set }
  var wireFrame: VIPERWireFrameProtocol? { get set }
  // VIEW -> PRESENTER
}

protocol VIPERInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol VIPERInteractorInputProtocol: class {
  var presenter: VIPERInteractorOutputProtocol? { get set }
  var APIDataManager: VIPERAPIDataManagerInputProtocol? { get set }
  var localDatamanager: VIPERLocalDataManagerInputProtocol? { get set }
  // PRESENTER -> INTERACTOR
}

protocol VIPERDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol VIPERAPIDataManagerInputProtocol: class {
  // INTERACTOR -> APIDATAMANAGER
}

protocol VIPERLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}