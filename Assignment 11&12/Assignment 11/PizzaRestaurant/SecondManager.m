//
//  SecondManager.m
//  Assignment 11
//
//  Created by Tima on 2018-05-02.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "SecondManager.h"

@implementation SecondManager

-(BOOL)kitchen:(Kitchen *) kitchen shouldMakePizzaOfSize: (PizzaSize)size andToppings:(NSArray *)toppings
{
    return YES;
}


-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"Here! Your pizza is ready.");
          [self.secondDelegate deliverPizza:pizza];
}

@end

