//
//  Dice.h
//  SnakesAndLadders
//
//  Created by Nelson Chow on 2017-03-16.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) int diceValue;

-(void)roll;

@end
