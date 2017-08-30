//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Aleksandra Korolczuk on 2017-08-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza





- (instancetype)initWithSize:(PizzaSize)size andTop:(NSArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

- (instancetype)initLargePepperoni
{
    self = [super init];
    if (self) {
        _size = (PizzaSize) large;
        _toppings = @[@"pepperoni", @"cheese"];
    }
    return self;

}


-(PizzaSize)pizzaSize:(NSString *)s
{

    int size =  [s intValue];
    if (size == large)
        return large;
    else if (size == medium)
        return medium;
    else
        return small;
}

- (NSArray *)pizzaToppings
{
    return self.toppings;
}




@end
