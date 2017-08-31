//
//  JuniorManager.m
//  PizzaRestaurant
//
//  Created by Aleksandra Korolczuk on 2017-08-30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "JuniorManager.h"
#import "Kitchen.h"

@implementation JuniorManager 






- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    NSLog(@"Should upgrade");
    return YES;
}


- (void)kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"Thank you !!!");
}


@end
