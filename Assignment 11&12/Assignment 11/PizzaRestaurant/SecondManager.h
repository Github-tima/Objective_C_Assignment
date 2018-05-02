//
//  SecondManager.h
//  Assignment 11
//
//  Created by Tima on 2018-05-02.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

@protocol secondManagerDelegate <NSObject>

-(void) deliverPizza:(Pizza *)pizza;

@end


@interface SecondManager : NSObject <KitchenDelegate>
@property (nonatomic, strong)NSString *name;
@property id <secondManagerDelegate> secondDelegate;

@end
