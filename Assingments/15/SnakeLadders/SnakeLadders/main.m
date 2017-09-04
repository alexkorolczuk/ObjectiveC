//
//  main.m
//  SnakeLadders
//
//  Created by Aleksandra Korolczuk on 2017-09-01.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"WELCOME TO SNAKE & LADDERS!!!!!");
        
        //NSCharacterSet* notDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];

        PlayerManager *playerManager = [[PlayerManager alloc]init];
        
        
        
        while (YES) {
            if ([playerManager.players count] <= 0) {

                NSLog(@"Please type number of players,minimum 1, maximum 9");
                NSString *number_of_players = [InputHandler getUserInput];

                if ([number_of_players intValue] == nil){
                    NSLog(@"Wrong input.");
                    continue;
                } else
                    [playerManager createPlayers:[number_of_players intValue]];
            }
         
            NSLog(@"Type roll or r to roll the dice");
            NSString *input = [[InputHandler getUserInput]lowercaseString];
            if ([input isEqualToString:@"r"] || [input isEqualToString:@"roll"]) {
                    [playerManager currentPlayer];
                    [playerManager roll];
                    
                    if(playerManager.currentPlayer.gameOver) {
                        NSLog(@"Thank you for playing!");
                        [playerManager.players removeAllObjects];
                        continue;
                    }
                    NSLog(@"%@",[playerManager score]);
                }
            else if ([input isEqualToString:@"q"] || [input isEqualToString:@"quit"]) {
                NSLog(@"Press q or quit again to quit or r/restart to restart the game");
                NSString *quit_restart = [[InputHandler getUserInput]lowercaseString];
                
                if ([quit_restart isEqualToString:@"q"] || [quit_restart isEqualToString:@"quit"]){
                    NSLog(@"THANKS FOR PLAYING!!!!");
                    break;
                } else if ([quit_restart isEqualToString:@"r"] || [quit_restart isEqualToString:@"restart"]) {
                    [playerManager.players removeAllObjects];
                    continue;
                }
                    

            }
                     
            
        }
    }
    return 0;
}
