//
//  DeliveryService.h
//  Assignment 11
//
//  Created by Tima on 2018-05-01.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SecondManager.h"

@class DeliveryCar;

@protocol deliveryServiceDelegate <NSObject>

-(void)deliverPizza:(Pizza *)pizza;

@end

@interface DeliveryService : NSObject <secondManagerDelegate>
@property(nonatomic,strong) id <deliveryServiceDelegate> car;
@property NSMutableArray *allPizzas;


@end
