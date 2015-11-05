
import Foundation

class VIPERPresenter: VIPERPresenterProtocol, VIPERInteractorOutputProtocol {
  weak var view: VIPERViewProtocol?
  var interactor: VIPERInteractorInputProtocol?
  var wireframe: VIPERWireframeProtocol?
  
  init() {}
  
  // MARK: - VIPERInteractorOutputProtocol
  
  // MARK: - VIPERPresenterProtocol
}