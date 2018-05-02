//
//  PaymentGateway.m
//  Assignment 10
//
//  Created by Tima on 2018-04-26.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPaymentAmount: (NSInteger)dollars {
    if([self.paymentDelegate canProcessPayment]){
        [self.paymentDelegate processPaymentAmount:dollars];
    } else{
        NSLog(@"Sorry for your incovenient. Your payment cannot be processed at this moment.");
    }
}
-(void) callback{//example of callback}
    NSLog(@"It's done");
}

@end
