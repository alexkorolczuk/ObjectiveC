//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "KitchenManager.h"
#import "JuniorManager.h"
#import "InputHandler.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        Kitchen *restaurantKitchen = [Kitchen new];
        DeliveryService *delivery = [[DeliveryService alloc]init];
        
        
        KitchenManager *kitchen_manager;
        JuniorManager *junior;

        while (TRUE) {
            NSLog(@"Please pick your pizza size and toppings:");

            NSLog(@"> ");
    
//-----------------------managing input------------------------------

            NSString *order = [InputHandler getUserInput];
            NSArray *commandWords = [order componentsSeparatedByString:@" "];
            NSString *first_word = commandWords[0];
            
            NSArray *toppings_array = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] -1)];
            
        
            PizzaSize size;
            if ([first_word isEqualToString:@"small"])
                size = (PizzaSize) small;
            else if ([first_word isEqualToString:@"medium"])
                size = (PizzaSize) medium;
            else if ([first_word isEqualToString:@"large"])
                size = (PizzaSize) large;
            else{
                NSLog(@"Wrong size of pizza");
                break;
            }
            
            
            
            NSLog(@"Press 1 for no manager, 2 for junior, 3 for kitchen manager");
          
            NSString *manager_switch = [InputHandler getUserInput];

            
//-----------------------ordering with different managers ------------------------------
            
            
            
//--------------------------- NO MANAGER: ------------------------------------------------

            if ([manager_switch isEqualToString:@"1"]) {
                if ([commandWords[0] isEqualToString:@"large"] && [commandWords[1] isEqualToString:@"pepperoni"])
                {
                    Pizza *pepperoni = [restaurantKitchen makePepperoni];
                    NSLog(@"Your Pepperoni: %@, %@", PizzaType_toString[size], [pepperoni pizzaToppings]);
                } else {
                    Pizza *regular =  [restaurantKitchen makePizzaWithSize:size toppings:toppings_array];
                    NSLog(@"Here is your regular: %@, %@", PizzaType_toString[size], [regular pizzaToppings]);
                }
            
            
//--------------------------- JUNIOR MAMANGER: ------------------------------------------------

            } else if ([manager_switch isEqualToString:@"2"]) {
                if (junior == NULL)
                    junior = [[JuniorManager alloc]init];

                restaurantKitchen.delegate = junior;
                [junior setService:(DeliveryService *) delivery];
                
                Pizza *junior_pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings_array];
                NSLog(@"Here is your pizza my lord: %@, %@", PizzaType_toString[junior_pizza.size], [junior_pizza pizzaToppings]);
                NSLog(@"Delivery service report: %@",[[delivery pizzasDelivered:junior_pizza] componentsJoinedByString:@" "]);
                
                
//--------------------------- KITCHEN MAMANGER: ------------------------------------------------

            } else {
                if (kitchen_manager == NULL)
                    kitchen_manager = [[KitchenManager alloc]init];
                
                restaurantKitchen.delegate = kitchen_manager;
                Pizza *manager_pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings_array];
                
                if (manager_pizza != NULL)
                    NSLog(@"Here is your pizza from kitchen manager: %@, %@", PizzaType_toString[manager_pizza.size], [manager_pizza pizzaToppings]);
                else
                    NSLog(@"No pizza! We hate anchovies!!!! ");
                }
            
        }


    }
    return 0;
}

