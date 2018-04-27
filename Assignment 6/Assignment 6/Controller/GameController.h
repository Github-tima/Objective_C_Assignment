//
//  GameController.h
//  Assignment 6
//
//  Created by Tima on 2018-04-20.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject
@property (nonatomic, strong) NSMutableArray <Dice*>*dice;
@property (nonatomic, strong) NSMutableArray *holdingDice;
@property (nonatomic, assign) NSInteger MAX_ROLLS;

-(void) holdDie: (NSInteger) dieNumber;
-(void) displayDice;
-(void) rollTheRest;


@end
