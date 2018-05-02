//
//  ApplePaymentService.m
//  Assignment 10
//
//  Created by Tima on 2018-04-26.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService
-(void) processPaymentAmount: (NSInteger) dollars
{
    NSLog(@"Apple processed amount $%ld",dollars);
}

-(BOOL) canProcessPayment{
    
    return arc4random_uniform(2) == 1;
}

-(void) downlaod {
    PaymentGateway * pg = [PaymentGateway new];
    [pg callback];
}

@end
