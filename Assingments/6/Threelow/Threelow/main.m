//
//  main.m
//  Threelow
//
//  Created by Aleksandra Korolczuk on 2017-08-26.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        NSLog(@"Welcome to Threelow!");
        NSLog(@"Please type roll if you want to play");
        while(1) {
            NSString *input = [InputHandler getUserInput];
            
            
            if ([input isEqualToString:@"roll"]){
                
                Dice *dice1 = [[Dice alloc]init];
                Dice *dice2 = [[Dice alloc]init];
                Dice *dice3 = [[Dice alloc]init];
                Dice *dice4 = [[Dice alloc]init];
                Dice *dice5 = [[Dice alloc]init];
                NSLog(@"Your first dice: %d", [dice1 rollTheDice]);
                NSLog(@"Your second dice: %d", [dice2 rollTheDice]);
                NSLog(@"Your third dice: %d", [dice3 rollTheDice]);
                NSLog(@"Your forth dice: %d", [dice4 rollTheDice]);
                NSLog(@"Your fifth dice: %d", [dice5 rollTheDice]);
        
            }
        
        

        
        }
        
        
    }
    return 0;
}
