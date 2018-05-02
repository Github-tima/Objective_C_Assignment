//
//  DeliveryService.m
//  Assignment 11
//
//  Created by Tima on 2018-05-01.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"

@implementation DeliveryService

-(instancetype) init
{
    self = [super init];
    if(self){
        _allPizzas = [[NSMutableArray alloc] init];
        _car = [[DeliveryCar alloc]init];
        
    }
    return self;
  
}
-(void)deliverPizza:(Pizza *)pizza
{
    if(pizza.size == Small){
        NSString *str = [pizza.toppings componentsJoinedByString:@""];
        str = [@"small" stringByAppendingString:str];
        
        [self.allPizzas addObject:str];
        [self.car deliverPizza:pizza];
    } else if (pizza.size == Medium){
        NSString *str = [pizza.toppings componentsJoinedByString:@""];
        str = [@"medium" stringByAppendingString:str];
        
        [self.allPizzas addObject:str];
        [self.car deliverPizza:pizza];
        
    } else if (pizza.size == Large){
        NSString *str = [pizza.toppings componentsJoinedByString:@""];
        str = [@"large" stringByAppendingString:str];
        
        [self.allPizzas addObject:str];
        [self.car deliverPizza:pizza];
    }
    
}

@end
