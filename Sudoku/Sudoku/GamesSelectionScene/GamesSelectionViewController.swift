//
//  GamesSelectionViewController.swift
//  Sudoku
//
//  Created by Jovanco Jovanovski on 6/4/18.
//  Copyright (c) 2018 Jovanco Jovanovski. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol GamesSelectionDisplayLogic: class
{
  func displaySomething(viewModel: GamesSelection.Something.ViewModel)
}

class GamesSelectionViewController: UIViewController, GamesSelectionDisplayLogic
{
  var interactor: GamesSelectionBusinessLogic?
  var router: (NSObjectProtocol & GamesSelectionRoutingLogic & GamesSelectionDataPassing)?

  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup()
  {
    let viewController = self
    let interactor = GamesSelectionInteractor()
    let presenter = GamesSelectionPresenter()
    let router = GamesSelectionRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }
  
  // MARK: Routing
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
  {
    if let scene = segue.identifier {
      let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
      if let router = router, router.responds(to: selector) {
        router.perform(selector, with: segue)
      }
    }
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    doSomething()
  }
  
  // MARK: Do something
  
  //@IBOutlet weak var nameTextField: UITextField!
  
  func doSomething()
  {
    let request = GamesSelection.Something.Request()
    interactor?.doSomething(request: request)
  }
  
  func displaySomething(viewModel: GamesSelection.Something.ViewModel)
  {
    //nameTextField.text = viewModel.name
  }
}
