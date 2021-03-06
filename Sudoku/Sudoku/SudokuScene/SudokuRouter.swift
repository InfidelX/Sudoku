//
//  SudokuRouter.swift
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

@objc protocol SudokuRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol SudokuDataPassing
{
  var dataStore: SudokuDataStore? { get }
}

class SudokuRouter: NSObject, SudokuRoutingLogic, SudokuDataPassing
{
  weak var viewController: SudokuViewController?
  var dataStore: SudokuDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: SudokuViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: SudokuDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
