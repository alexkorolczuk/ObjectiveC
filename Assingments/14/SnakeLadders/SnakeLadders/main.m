//
//  main.m
//  SnakeLadders
//
//  Created by Aleksandra Korolczuk on 2017-09-01.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"WELCOME TO SNAKE & LADDERS!!!!!");
        NSLog(@"Type roll or r to roll the dice");
        

        Player *player =[[Player alloc]init];
        
        while (YES) {
            NSString *input = [InputHandler getUserInput];
            if ([input isEqualToString:@"r"] || [input isEqualToString:@"roll"]) {
                [player roll];
                NSLog(@"%@", player.output);
                if (player.gameOver == YES){
                    NSLog(@"Thank you for playing!");
                    break;
                }
            }
        }
    }
    return 0;
}
