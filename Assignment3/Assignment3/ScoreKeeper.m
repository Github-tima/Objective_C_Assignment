//
//  ScoreKeeper.m
//  Assignment3
//
//  Created by Tima on 2018-04-17.
//  Copyright © 2018 Tima. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self){
        _rights = 0;
        _wrongs = 0;
    }
    return self;
}

- (void) displayResult
{
    CGFloat percentage = (CGFloat) _rights / (_rights + _wrongs) * 100;
    NSLog(@"score: %ld rights, %ld wrongs ----- %.2f%%", _rights, _wrongs, percentage);
}
@end

