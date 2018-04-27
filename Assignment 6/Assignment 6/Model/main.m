//
//  main.m
//  Assignment 6
//
//  Created by Tima on 2018-04-20.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController  *player = [[GameController alloc] init];
    
        while(YES){
            NSString *input = [InputHandler getUserInput:@"Enter roll to roll the dice:"];
            if ([input isEqualToString:@"roll"]){
                [player rollTheRest];
                
                while (YES){
                NSString *hold = [InputHandler getUserInput: @"Enter the number to hold a die or 'q' to quite:"];
                    if ([hold isEqualToString:@"q"]){
                        break;
                }
                    [player holdDie: [hold integerValue]];
                }
            }else{
                break;
            }
        }
        [player displayDice];
    }
    return 0;
}
