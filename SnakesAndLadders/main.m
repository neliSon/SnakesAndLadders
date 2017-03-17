//
//  main.m
//  SnakesAndLadders
//
//  Created by Nelson Chow on 2017-03-15.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PlayerManager *playerManager = [[PlayerManager alloc] init];
        
        // Choose number of players.
        while (playerManager.players.count == 0) {
            NSString *numberOfPlayers = [InputHandler inputForPrompt:@"Enter the number of players who wish to play."];
            [playerManager createPlayers:[numberOfPlayers intValue]];
        }
        
        // Game loop.
        while (YES) {
            
            // Roll dice when user types roll.
            NSString *inputString = [InputHandler inputForPrompt:@"Type 'roll' or 'r' to roll dice."];
            
            if ([inputString isEqualToString:@"roll"] || [inputString isEqualToString: @"r"]) {
                // roll dice
                NSLog(@"Rolled");
//                [player rollAndMove];
            }
            
        }
    }
    return 0;
}
