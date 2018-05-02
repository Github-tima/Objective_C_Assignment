//
//  main.m
//  Assignment 10
//
//  Created by Tima on 2018-04-26.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Get random number between 100 and 1000
        NSInteger dollars = arc4random_uniform(901) + 100;
        
        NSLog(@"Thank you for shopping at Acme.com. Your total today is $@%ld. Please select your payment method:\n1: Paypal\n2: Stripe\n3: Amazon\n4: Apple Pay",dollars);
        
        NSInteger method = [[InputHandler getUserInputWithPrompt:@">>>"] integerValue]; // convert string to integer
        PaymentGateway *gateway = [PaymentGateway new];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePaymentService *apple = [ApplePaymentService new];
        
        switch (method) {
            case 1:
                [gateway setPaymentDelegate:paypal];
                break;
            case 2:
                [gateway setPaymentDelegate:stripe];
                break;
                
            case 3:
                [gateway setPaymentDelegate:amazon];
                break;
                
            case 4:
                [gateway setPaymentDelegate:apple];
                break;
                
            default:
                break;
        }
        [gateway processPaymentAmount: dollars];
        [gateway callback];
    }
    return 0;
            
}
