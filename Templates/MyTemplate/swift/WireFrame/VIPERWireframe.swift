
import Foundation
import UIKit

class VIPERWireframe : BaseWireframe, VIPERWireframeProtocol {
  static let viewControllerIdentifier = "VIPERViewController"
  
  class func setupModule() -> UIViewController {
    let viewController = viewControllerFromStoryboard(viewControllerIdentifier) as! VIPERViewController
    let view: VIPERViewProtocol = viewController as VIPERViewProtocol
    let presenter: protocol<VIPERPresenterProtocol, VIPERInteractorOutputProtocol> = VIPERPresenter()
    let interactor: VIPERInteractorInputProtocol = VIPERInteractor()
    let APIDataManager: VIPERAPIDataManagerInputProtocol = VIPERAPIDataManager()
    let localDataManager: VIPERLocalDataManagerInputProtocol = VIPERLocalDataManager()
    let wireframe = VIPERWireframe()
    let router = Router.sharedInstance
    
    view.presenter = presenter
    presenter.view = view
    presenter.wireframe = wireframe
    presenter.interactor = interactor
    interactor.presenter = presenter
    interactor.APIDataManager = APIDataManager
    interactor.localDatamanager = localDataManager
    wireframe.viewController = viewController
    wireframe.router = router
    
    return viewController
  }
}