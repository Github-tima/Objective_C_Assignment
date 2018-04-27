//
//  FriendlyGreetingDecider.m
//  DelegatePattern
//
//  Created by Tima on 2018-04-25.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "FriendlyGreetingDecider.h"

@implementation FriendlyGreetingDecider

-(BOOL) shouldSayHello{
    if(arc4random_uniform(2) % 2 == 0){
        return YES;
    } else {
        return NO;
    }
}
@end
