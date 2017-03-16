//
//  main.m
//  SnakesAndLadders
//
//  Created by Nelson Chow on 2017-03-15.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Player *player = [[Player alloc] init];
        
        while (!player.gameOver) {
            
            // Roll dice when user types roll.
            NSString *inputString = [InputHandler inputForPrompt:@"Type 'roll' or 'r' to roll dice."];
            
            if ([inputString isEqualToString:@"roll"] || [inputString isEqualToString: @"r"]) {
                // roll dice
                [player rollAndMove];
            }
            
        }
    }
    return 0;
}
