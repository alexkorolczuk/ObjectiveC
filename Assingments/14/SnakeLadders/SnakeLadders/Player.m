//
//  Player.m
//  SnakeLadders
//
//  Created by Aleksandra Korolczuk on 2017-09-01.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "Player.h"

@implementation Player


- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameOver = NO;
        _gameLogic = @{ @"4" : @14,
                        @"9": @31,
                        @"20": @38,
                        @"28": @84,
                        @"40": @89,
                        @"51": @67,
                        @"63": @81,
                        @"17": @7,
                        @"64": @60,
                        @"89": @26,
                        @"95": @75,
                        @"99": @78,
                        };
        
    }
    return self;
}

-(void) roll
{
    
    int dice = arc4random_uniform(6) +1;
    
    _currentSquare  = _currentSquare + dice;
    _output = [NSString stringWithFormat:@"You rolled %d, you landed on %ld", dice, _currentSquare];
    
    int current = (int) _currentSquare;

    for (NSNumber *number in [_gameLogic allKeys]){
        int key = [number intValue];
        if (key == current) {
            _currentSquare = [[_gameLogic objectForKey:number]integerValue];
            _output = [NSString stringWithFormat:@"Magic! Your rolled %d, but you move from %d to %ld", dice, key, _currentSquare];   }
    }
    
    if (_currentSquare >= 100) {
        _output = [NSString stringWithFormat:@"You rolled %d, GAME OVER!!!", dice];
        _gameOver = YES;
    }

    
}



@end
