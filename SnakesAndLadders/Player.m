//
//  Player.m
//  SnakesAndLadders
//
//  Created by Nelson Chow on 2017-03-16.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
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
        _gameOver = NO;
    }
    return self;
}

-(void)rollAndMove {
    [self.dice roll];
    [self moveToSquare:self.dice.diceValue];
}

-(void)moveToSquare:(int)diceValue {
    self.currentSquare += diceValue;
    NSLog(@"You've landed on square: %d", self.currentSquare);
    
    // if our dice value takes us to 100, or past 100, we win.
    if (self.currentSquare >= 100) {
        self.gameOver = YES;
        NSLog(@"You win!");
        
    } else {
        
        // if we land on a special square, we move to new square.
        [self.gameLogic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            if (self.currentSquare == [key intValue]) {
                int newSquare = [[self.gameLogic objectForKey:key] intValue];
                
                // Report ladder or snake.
                if (newSquare > self.currentSquare) {
                    NSLog(@"You climbed on a ladder from %d to %d", self.currentSquare, newSquare);
                } else {
                    NSLog(@"You slid down a snake from %d to %d", self.currentSquare, newSquare);
                }
                self.currentSquare = newSquare;
            }
        }];
    }
}

@end
