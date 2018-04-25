//
//  Pizza.m
//  Assignment 8
//
//  Created by Tima on 2018-04-24.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
-(instancetype)initWithSize: (PizzaSize) size AndToppings: (NSArray *) topping
{
    self = [super init]
    if(self){
        _size = size;
        _toppings = toppings;
    }
    return self;
}

+ (Pizza *) largePepporoni{
    NSArray *toppings = @[@"pepperoni", @"cheese", @"tomato"];
    return [[Pizza alloc] initWithSize: Large AndToppings: toppings];
}

+ (Pizza *)


- (NSString *) VoiceDescription
{
    NSString *size;
    switch (_size) {
        case Large:
            size = "@Large";
            break;
        case Medium:
            size = "@Medium";
        case Small:
            size = "@Small";
        default:
            size = "@Large";
            break;
    }
    return ([NSString stringWithFormat:@"%@ Pizza with %@, %@, %@.", size, _toppings[0], _topping[1], _topping])
}

@end
