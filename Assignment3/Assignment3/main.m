//
//  main.m
//  Assignment3
//
//  Created by Tima on 2018-04-17
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditonalQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog (@"MATHS!!");
        ScoreKeeper *sk =[[ScoreKeeper alloc] init];
        
        while (gameOn){
            AdditonalQuestion *q1 = [[AdditonalQuestion alloc] init];
            NSString *input = [InputHandler getUserInput: [q1 question]];
            
            if ([input isEqualToString:@"quit"])
            {
            gameOn = NO;
            break;
        }
            NSString* answer = [NSString stringWithFormat:@"%ld", [q1 answer]];
        
        if([input isEqualToString: answer]){
            NSLog(@"Right!");
            [sk setRights: [sk rights] + 1];
        }else{
            NSLog(@"Wrong!");
            [sk setWrongs: [sk wrongs] + 1];
            }
        }
    [sk displayResult];
   }
  return 0;
}
