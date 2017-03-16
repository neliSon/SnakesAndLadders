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
        _dice = [[Dice alloc] init];
    }
    return self;
}

-(int)rollDice {
    return [self.dice roll];
}

@end
