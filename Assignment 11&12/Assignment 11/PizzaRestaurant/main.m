//
//  main.m
//  Assignment 11
//
//  Created by Tima on 2018-05-02.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "InputHandler.h"
#import "NewManager.h"
#import "SecondManager.h"
#import "DeliveryService.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Kitchen *restaurantKitchen = [Kitchen new];
        NewManager * new =[[NewManager alloc] init];
        SecondManager *second = [[SecondManager alloc]init];
        DeliveryService *service = [[DeliveryService alloc]init];
        new.name = @"Jimmy";
        second.name = @"Peter";
        
        // Loop forever
        while (TRUE) {
            
        
            NSLog(@"Pick your manager (enter Manager A or Manager B or No One.");
            NSString *inputString = [InputHandler getUserInputWithPrompt:@">"];
            NSArray * commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSLog(@"%@", inputString);
            
    
            if([inputString isEqualToString:@"Manager A"]){
                restaurantKitchen.kitchenDelegate = new;
                NSLog(@"Your Manager is %@.", new.name);
            } else if ([inputString isEqualToString:@"Manager B"]){
                restaurantKitchen.kitchenDelegate = second;
                NSLog(@"Your Manager is %@.", second.name);
                second.secondDelegate = service;
            } else if ([inputString isEqualToString:@"No one"]){
                NSLog(@"You don't have manager.");
            }
            
            NSLog(@"Please pick your pizza size and toppings:");
            NSString *inputString2 = [InputHandler getUserInputWithPrompt:@">"];
            
            NSLog(@"Your pizza order is %@.\n", inputString2);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords2 = [inputString componentsSeparatedByString:@" "];
            
            // send some message to kichen.
            NSString *size = commandWords[0];// size
            NSMutableArray *toppings =[[NSMutableArray alloc] initWithArray:commandWords];
            [toppings removeObjectAtIndex:0];
            
            
            Pizza *yourPizza = nil;
            if([size isEqualToString:@"small"]){
                yourPizza = [restaurantKitchen makePizzaWithSize:Small toppings:toppings];
            } else if ([size isEqualToString:@"medium"]){
                yourPizza = [restaurantKitchen makePizzaWithSize:Medium toppings:toppings];
            } else if ([size isEqualToString:@"large"]){
                yourPizza = [restaurantKitchen makePizzaWithSize:Large toppings:toppings];
            }
            NSLog(@"%@",service.allPizzas[0]);
            
        }
        return 0;
        }
}
