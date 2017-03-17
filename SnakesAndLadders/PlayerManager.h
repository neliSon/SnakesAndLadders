//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by Nelson Chow on 2017-03-16.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property (nonatomic, strong) NSMutableArray *players;
@property (nonatomic, assign) NSInteger currentIndex;
@property (nonatomic, assign) BOOL gameOver;

-(void)createPlayers:(int)numberOfPlayers;
-(void)rollForPlayer;
-(Player *)currentPlayer;

@end
