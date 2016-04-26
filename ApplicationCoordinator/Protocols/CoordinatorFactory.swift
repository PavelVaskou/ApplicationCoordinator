//
//  CoordinatorFactory.swift
//  Services
//
//  Created by Панов Андрей on 21.04.16.
//  Copyright © 2016 Avito. All rights reserved.
//
import UIKit

class CoordinatorFactory {
    
    func createItemCoordinatorTyple() -> (creationCoordinator: ItemCoordinator, presenter: UINavigationController) {
        
        let presenter = createNavigationController()
        return (ItemCoordinator(presenter: presenter), presenter)
    }
    
    func createItemCreationCoordinatorTyple() -> (createCoordinator: ItemCreateCoordinator, presenter: UINavigationController) {
        
        let presenter = createNavigationController()
        return (ItemCreateCoordinator(presenter: presenter), presenter)
    }
    
    func createAuthCoordinatorTyple() -> (authCoordinator: AuthCoordinator, presenter: UINavigationController) {
        
        let presenter = createNavigationController()
        return (AuthCoordinator(presenter: presenter), presenter)
    }
    
    private func createNavigationController() -> UINavigationController {
        return UINavigationController.controllerFromStoryboard(.Main)
    }
}