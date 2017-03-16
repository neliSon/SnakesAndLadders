//
//  Dice.m
//  SnakesAndLadders
//
//  Created by Nelson Chow on 2017-03-16.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(int)rollDice {
    return 1 + arc4random_uniform(6);
}

@end
