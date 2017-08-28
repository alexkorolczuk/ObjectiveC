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
#import "GameController.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        NSLog(@"Welcome to Threelow!");
        NSLog(@"Please type roll if you want to play");
        
        GameController *gamecontroler = [[GameController alloc]init];
        
        Dice *dice1 = [[Dice alloc]init];
        Dice *dice2 = [[Dice alloc]init];
        Dice *dice3 = [[Dice alloc]init];
        Dice *dice4 = [[Dice alloc]init];
        Dice *dice5 = [[Dice alloc]init];
        
        [gamecontroler.array_of_dices addObject:dice1];
        [gamecontroler.array_of_dices addObject:dice2];
        [gamecontroler.array_of_dices addObject:dice3];
        [gamecontroler.array_of_dices addObject:dice4];
        [gamecontroler.array_of_dices addObject:dice5];
        
       

        
        while(1) {
            NSString *input = [InputHandler getUserInput];
            
            
            if ([input isEqualToString:@"roll"]){
                
                for ( Dice *dice in gamecontroler.array_of_dices) {
                    NSLog(@"%d", [dice rollTheDice]);
                }
               
                
                
                NSLog(@"Choose the dice you want to hold (type 1-5)");
                NSString *type_dice =[InputHandler getUserInput];
                if ([type_dice isEqualToString:@"1"])
                    [gamecontroler holdDie:dice1 withNumber:type_dice];
                else if([type_dice isEqualToString:@"2"])
                    [gamecontroler holdDie:dice2 withNumber:type_dice];
                else if([type_dice isEqualToString:@"3"])
                    [gamecontroler holdDie:dice3 withNumber:type_dice];
                else if([type_dice isEqualToString:@"4"])
                    [gamecontroler holdDie:dice4 withNumber:type_dice];
                else if([type_dice isEqualToString:@"5"])
                    [gamecontroler holdDie:dice5 withNumber:type_dice];
                
                for (int i =0; i<[gamecontroler.array_of_holds count]; i++) {
                    NSLog(@"Last hold dice number: %@, values on hold: %@. Type roll to roll again or unhold if you made a mistake",type_dice,[(NSString *)gamecontroler.array_of_holds valueForKey:@"value"]);
                }
                
                NSString *unhold =[InputHandler getUserInput];
                if ([unhold isEqualToString:@"unhold %@",type_dice]) {
                    
                }
                
                
                
            }
        
        }
        
        
    }
    return 0;
}
