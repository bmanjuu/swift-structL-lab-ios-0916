//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    
    var location: Coordinate
    var pizzasAvailable: Int = 10
    
    init(location: Coordinate) {
        self.location = location
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        
        if destination.distance(to: self.location) <= 5000 && self.pizzasAvailable > 0 {
            return true
        }
        
        return false
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        if self.isInRange(to: destination) {
            self.pizzasAvailable-=1
            return true
        }
        
        return false
    }
    
}
