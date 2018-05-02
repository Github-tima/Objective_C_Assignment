//
//  AmazonPaymentService.m
//  Assignment 10
//
//  Created by Tima on 2018-04-26.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
-(void) processPaymentAmount: (NSInteger) dollars
{
    NSLog(@"Amazaon processed amount $%ld",dollars);
}
          
 -(BOOL) canProcessPayment{
     return arc4random_uniform(2) == 1;
}

@end
