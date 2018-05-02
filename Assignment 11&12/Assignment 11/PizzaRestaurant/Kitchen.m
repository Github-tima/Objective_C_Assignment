//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    if(self.kitchenDelegate){
        if([self.kitchenDelegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]
            &&[self.kitchenDelegate kitchenShouldUpgradeOrder:self]){
            
            Pizza *pizza =[[Pizza alloc] initWithSize:(Large) AndToppings:toppings];
            NSLog(@"Here is your upgraded Pizza!");
            return pizza;
            
        } else if ([self.kitchenDelegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
            
            if([self.kitchenDelegate respondsToSelector:@selector(kitchenDidMakePizza:)]){
                Pizza *pizza =[[Pizza alloc] initWithSize:size AndToppings:toppings];
                NSLog(@" Here is your Pizza!");
                return pizza;
                
            } else {
                NSLog(@"Sorry, we couldn't make a Pizza for you.");
                return nil;
            }
            
        }
    }
    return ([Pizza new]);
}

@end
