//
//  JuniorManager.m
//  PizzaRestaurant
//
//  Created by Aleksandra Korolczuk on 2017-08-30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "JuniorManager.h"
#import "Kitchen.h"
#import "DeliveryService.h"

@implementation JuniorManager 



- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"Thank you for ordering with us!!!");
    [self.service deliverPizza:pizza];
    
}


@end
