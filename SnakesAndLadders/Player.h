//
//  Player.h
//  SnakesAndLadders
//
//  Created by Nelson Chow on 2017-03-16.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface Player : NSObject

@property (nonatomic, strong) Dice *dice;

-(int)rollDice;

@end
