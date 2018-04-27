//
//  Score.m
//  Assignment 6
//
//  Created by Tima on 2018-04-20.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "Score.h"


@implementation Score

 -(instancetype)init{
    self = [super init];
    if(self){
        _total = [NSMutableArray array];
    }
    return self;
        
    }
  - (NSInteger) totalScore{
    NSInteger totalScore = 0;
    for(Dice *dice in _total){
        totalScore += [dice value];
    }
    return totalScore;
}

@end
