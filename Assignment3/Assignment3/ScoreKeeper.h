//
//  ScoreKeeper.h
//  Assignment3
//
//  Created by Tima on 2018-04-17.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property(nonatomic, assign) NSInteger rights;
@property(nonatomic, assign) NSInteger wrongs;

- (instancetype) init;
-(void) displayResult;

@end
