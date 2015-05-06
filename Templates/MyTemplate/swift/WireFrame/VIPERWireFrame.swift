
import Foundation

class VIPERWireframe : BaseWireframe, VIPERWireFrameProtocol {
  static let viewControllerIdentifier = "VIPERViewController"
  weak var viewController: VIPERViewController?
  var router : Router?
  
  class func setupModule() -> VIPERWireFrameProtocol {
    let viewController = viewControllerFromStoryboard(viewControllerIdentifier) as! VIPERViewController
    let view: VIPERViewProtocol = viewController as VIPERViewProtocol
    let presenter: protocol<VIPERPresenterProtocol, VIPERInteractorOutputProtocol> = VIPERPresenter()
    let interactor: VIPERInteractorInputProtocol = VIPERInteractor()
    let APIDataManager: VIPERAPIDataManagerInputProtocol = VIPERAPIDataManager()
    let localDataManager: VIPERLocalDataManagerInputProtocol = VIPERLocalDataManager()
    let wireFrame: VIPERWireFrameProtocol = VIPERWireframe()

    view.presenter = presenter
    presenter.view = view
    presenter.wireFrame = wireFrame
    presenter.interactor = interactor
    interactor.presenter = presenter
    interactor.APIDataManager = APIDataManager
    interactor.localDatamanager = localDataManager
    wireFrame.viewController = viewController
    wireFrame.router = Router.sharedInstance
    
    return wireFrame
  }
}