//
//  Score.h
//  Assignment 6
//
//  Created by Tima on 2018-04-20.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface Score : NSObject
@property(nonatomic, strong) NSMutableArray *total;
-(NSInteger) totalScore;

@end
