
import Foundation

class VIPERPresenter: VIPERPresenterProtocol, VIPERInteractorOutputProtocol {
  weak var view: VIPERViewProtocol?
  var interactor: VIPERInteractorInputProtocol?
  var wireFrame: VIPERWireFrameProtocol?
  
  init() {}
  
  // MARK: VIPERInteractorOutputProtocol
  
  // MARK: VIPERPresenterProtocol
}