//
//  AdditonalQuestion.m
//  Assignment3
//
//  Created by Tima on 2018-04-17.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "AdditonalQuestion.h"

@implementation AdditonalQuestion
-(instancetype)init
{
    self = [super init];
    if (self) {
        //get 2 random numbers
        //(0 ~ 90) + 10 == 10 ~99
        int num1 = arc4random_uniform(91) + 10;
        int num2 = arc4random_uniform(91) + 10;
        //@“first  + second
        
        _question = [NSString stringWithFormat:@"%d + %d = ", num1, num2];
        _answer = num1 + num2;
    }
    return self;
}

@end
