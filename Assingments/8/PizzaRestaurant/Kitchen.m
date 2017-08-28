//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"


@implementation Kitchen

- (Pizza *)makePizzaWithSize:(NSString *)size toppings:(NSArray *)toppings
{
 
    Pizza *p1 = [[Pizza alloc]initWithSize:size andTop:toppings];
    
    return p1;
    
}

-(Pizza *)makePepperoni
{
    
    Pizza *p2 = [[Pizza alloc] initLargePepperoni];
    return  p2;
}

@end
