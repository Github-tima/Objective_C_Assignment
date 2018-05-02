//
//  KitchenDelegate.h
//  Assignment 11
//
//  Created by Tima on 2018-05-02.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class Kitchen

@protocol KitchenDelegate <NSObject>
-(BOOL)kitchen:(Kitchen *) kitchen shouldMakePizzaOfSize: (PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
-(void)kitchenDidMakePizza:(Pizza *)pizza;


@end
