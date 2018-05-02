//
//  NewManager.m
//  Assignment 11
//
//  Created by Tima on 2018-05-02.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "NewManager.h"

@implementation NewManager

-(BOOL)kitchen:(Kitchen *) kitchen shouldMakePizzaOfSize: (PizzaSize)size andToppings:(NSArray *)toppings

{
    if([toppings containsObject:@"anchovies"]){
        NSLog(@"No! I don't like Anchovies.\n");
        return NO;
    }else{
        return YES;
    }
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}
@end
