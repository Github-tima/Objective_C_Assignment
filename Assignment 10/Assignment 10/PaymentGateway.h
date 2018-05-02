//
//  PaymentGateway.h
//  Assignment 10
//
//  Created by Tima on 2018-04-26.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate
-(void) processPaymentAmount: (NSInteger) dollars;
-(BOOL) canProcessPayment;
@end

@interface PaymentGateway: NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;
-(void) processPaymentAmount: (NSInteger) dollars;
-(void) callback;
@end
