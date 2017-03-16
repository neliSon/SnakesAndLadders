//
//  Player.m
//  SnakesAndLadders
//
//  Created by Nelson Chow on 2017-03-16.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _dice = [[Dice alloc] init];
        _gameLogic = @{ // Ladders:
                       @4 : @14,
                       @9 : @31,
                       @20 : @38,
                       @28 : @84,
                       @40 : @59,
                       @51 : @67,
                       @63 : @81,
                       // Snakes:
                       @17 : @7,
                       @64 : @60,
                       @89 : @26,
                       @95 : @73,
                       @99 : @78
                       };
    }
    return self;
}

-(void)rollAndMove {
    int diceValue = [self.dice roll];
    [self moveToSquare:diceValue];
}

-(void)moveToSquare:(int)diceValue {
    self.currentSquare += diceValue;
}

@end
