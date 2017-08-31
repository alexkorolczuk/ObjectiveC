//
//  KitchenManager.m
//  PizzaRestaurant
//
//  Created by Aleksandra Korolczuk on 2017-08-30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "KitchenManager.h"
#import "Kitchen.h"

@implementation KitchenManager



- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    
    BOOL should = YES;
    for (NSString *topping in toppings){
        if ([topping isEqualToString:@"anchovies"])
            return should = NO;
        else
            return should = YES;
            }
    return should;
}


- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}


- (void)kitchenDidMakePizza:(Pizza *)pizza
{
    
}







@end
