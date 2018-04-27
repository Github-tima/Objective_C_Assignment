//
//  Greeter.h
//  DelegatePattern
//
//  Created by Tima on 2018-04-25.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GreeterDelegate

-(BOOL)shouldSayHello;

@end

@interface Greeter : NSObject

@property(nonatomic, weak) id <GreeterDelegate> delegate;
-(BOOL) askDelegate;

@end
