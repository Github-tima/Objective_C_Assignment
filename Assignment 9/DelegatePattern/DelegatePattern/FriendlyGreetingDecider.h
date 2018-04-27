//
//  FriendlyGreetingDecider.h
//  DelegatePattern
//
//  Created by Tima on 2018-04-25.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"

@interface FriendlyGreetingDecider : NSObject <GreeterDelegate>

-(BOOL) shouldSayHello;

@end
