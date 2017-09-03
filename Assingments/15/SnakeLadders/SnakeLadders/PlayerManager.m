//
//  PlayerManager.m
//  SnakeLadders
//
//  Created by Aleksandra Korolczuk on 2017-09-02.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

@implementation PlayerManager


- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc]init];
        _currentIndex = 0;
    }
    return self;
}




-(void)createPlayers:(int)numberOfPlayers
{
    for (int i=0; i<numberOfPlayers;i++) {
        Player *player = [[Player alloc]init];
        player.name =[NSMutableString stringWithFormat:@"player%d",i+1];
        [_players addObject:player];
        
    }
}


- (Player *)currentPlayer
{
    
    int count = (int) [_players count];
    
    int i = (int)_currentIndex;
    
    Player *player;
    while (i % count != 0 || i==0){
        Player *player = _players[i];
        return player;
    }
    if(i % count == 0){
            _currentIndex= 0;
    }
    
    return player;
}

-(void) roll
{
    Player *currentplayer = [self currentPlayer];
    [currentplayer rollTheDice];
    _currentIndex += 1;
   
    
}


@end
