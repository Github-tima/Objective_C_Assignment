//
//  main.m
//  DelegatePattern
//
//  Created by Tima on 2018-04-25.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"
#import "FriendlyGreetingDecider.h"
#import "HorribleGreetingDecider.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Greeter *greeter = [Greeter new];
        FriendlyGreetingDecider *decider = [FriendlyGreetingDecider new];
        HorribleGreetingDecider *h_decider = [HorribleGreetingDecider new];
        
        greeter.delegate = decider;
        
        if([greeter askDelegate]) {
            NSLog(@"Greeting Decider said YES");
        }else{
            NSLog(@"Greeting Decider said NO");
        }
    }
    return 0;
}
