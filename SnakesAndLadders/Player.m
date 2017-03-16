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
