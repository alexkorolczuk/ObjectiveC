//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@class Pizza;


@implementation Kitchen

-(Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{

    Pizza *pizza;
    if (self.delegate)
    {
            if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] == NO)
                return NULL;
        
            if ([self.delegate kitchenShouldUpgradeOrder:self] == YES){
                NSLog(@"Should be large!");

                pizza = [[Pizza alloc]initWithSize:large andTop:toppings];
                return pizza;
                }
        
        pizza = [[Pizza alloc]initWithSize:size andTop:toppings];
        return pizza;
        
        if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)])
            [self.delegate kitchenDidMakePizza:pizza];
        
        
    } else {
        pizza = [[Pizza alloc]initWithSize:size andTop:toppings];
        return pizza;
    }
    
    return pizza;
    
}

-(Pizza *)makePepperoni
{
    Pizza *pepperoni = [[Pizza alloc] initLargePepperoni];
    return pepperoni;
}

@end
