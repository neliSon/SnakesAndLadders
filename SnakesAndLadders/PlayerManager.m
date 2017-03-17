//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by Nelson Chow on 2017-03-16.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray array];
    }
    return self;
}

-(void)createPlayers:(int)numberOfPlayers {
    for (int i = 1; i <= numberOfPlayers; i++) {
        Player *player = [[NSClassFromString(@"Player") alloc] init];
        player.name = [NSString stringWithFormat:@"Player%d", i];
        [self.players addObject:player];
    }
}

@end
