//
//  PhoneNumber.h
//  Assignment4
//
//  Created by Tima on 2018-04-18.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhoneNumber : NSObject

@property (nonatomic, strong) NSString *label;
@property (nonatomic, strong) NSString *digits;

- (instancetype)initWithLabel:(NSString *) label AndDigits:(NSString *) digits;

@end
