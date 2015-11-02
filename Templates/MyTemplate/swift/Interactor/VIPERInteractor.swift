
import Foundation

class VIPERInteractor: VIPERInteractorInputProtocol {
  weak var presenter: VIPERInteractorOutputProtocol?
  var APIDataManager: VIPERAPIDataManagerInputProtocol?
  var localDatamanager: VIPERLocalDataManagerInputProtocol?
  
  init() {}
  
  // MARK: - VIPERInteractorInputProtocol
}