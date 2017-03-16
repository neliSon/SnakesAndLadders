//
//  main.m
//  SnakesAndLadders
//
//  Created by Nelson Chow on 2017-03-15.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Instantiate dice.
        Dice *dice = [[Dice alloc] init];
        
        while (YES) {
            
            // Roll dice when user types roll.
            NSString *inputString = [InputHandler inputForPrompt:@"Type 'roll' or 'r' to roll dice."];
            
            if ([inputString isEqualToString:@"roll"] || [inputString isEqualToString: @"r"]) {
                // roll dice
                NSLog(@"You've rolled %d", [dice rollDice]);
            }
            
        }
    }
    return 0;
}
