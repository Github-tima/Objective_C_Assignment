//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Tima on 2018-04-24.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

-(instancetype)init{
    return[self initWithSize:Small AndToppings:[NSArray new]];
}

-(instancetype)initWithSize: (PizzaSize) size AndToppings: (NSArray *) toppings
{
    self = [super init];
    if(self){
        _size = size;
        _toppings = toppings;
    }
    return self;
}

//+ (Pizza *) largePepporoni{
//    NSArray *toppings = @[@"pepperoni", @"cheese", @"tomato"];
//    return [[Pizza alloc] initWithSize: Large AndToppings: toppings];
//}
//
//+ (Pizza *) meatLoversWithSize: (PizzaSize) size {
//    NSArray *toppings = @[@"beef", @"chicken", @"pork"];
//    return [[Pizza alloc] initWithSize: size AndToppings:toppings];
//}
//
//+ (PizzaSize) getPizzaSize:(NSString *) size {
//    NSString *lowered = [size lowercaseString];
//    if([lowered isEqualToString:@"large"]){
//        return Large;
//    } else if ([lowered isEqualToString:@"medium"]){
//        return Medium;
//    } else {
//        return Small;
//    }
//}
//
//- (NSString *) description
//{
//    NSString *size;
//    switch (_size) {
//        case Large:
//            size = @"Large";
//            break;
//        case Medium:
//            size = @"Medium";
//        case Small:
//            size = @"Small";
//        default:
//            size = @"Large";
//            break;
//    }
//    return ([NSString stringWithFormat:@ "%@ Pizza with %@, %@, %@.", size, _toppings[0], _toppings[1], _toppings[2]]);
//}

@end
