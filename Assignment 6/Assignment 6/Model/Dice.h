//
//  Dice.h
//  Assignment 6
//
//  Created by Tima on 2018-04-20.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject
@property (nonatomic, assign) NSInteger value;//stroe value of dice
@property (nonatomic, assign) BOOL isHeld;
-(instancetype)initWithValue: (NSInteger) value;
- (void) roll;
@end
