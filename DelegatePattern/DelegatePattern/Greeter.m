//
//  Greeter.m
//  DelegatePattern
//
//  Created by Tima on 2018-04-25.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

-(BOOL) askDelegate {
    return [self.delegate shouldSayHello];
}
@end
