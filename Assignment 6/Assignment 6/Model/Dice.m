//
//  Dice.m
//  Assignment 6
//
//  Created by Tima on 2018-04-20.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(instancetype)initWithValue: (NSInteger) value
{
    self = [super init];
    if (self) {
        _value = value;
    }
    return self;
}

- (void) roll{
    _value = arc4random_uniform(6) + 1;
}

- (NSString *)description//tostring method
//  cmd + ctrl + space = emoji
{
    NSString *die;
    switch (_value) {
        case 1:
            die = @"⚀";
            break;
        case 2:
            die = @"⚁";
            break;
        case 3:
            die = @"⚂";
            break;
        case 4:
            die = @"⚃";
            break;
        case 5:
            die = @"⚄";
            break;
        case 6:
            die = @"⚅";
            break;
            
        default:
            break;
    }
    return die;
}
@end
