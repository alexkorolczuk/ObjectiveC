//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            if ([commandWords[0] isEqualToString:@"large"] || [commandWords[1] isEqualToString:@"pepperoni"])
            {
                Pizza *p2 = [restaurantKitchen makePepperoni];
                NSLog(@"Your Pepperoni: %@, %@", [p2 pizzaSize], [p2 pizzaToppings]);
            } else {
            Pizza *p1 =  [restaurantKitchen makePizzaWithSize:commandWords[0] toppings:commandWords[1]];
            NSLog(@"Here is your pizza: %@ %@", [p1 pizzaSize], [p1 pizzaToppings]);
            }
            
        }

    }
    return 0;
}

