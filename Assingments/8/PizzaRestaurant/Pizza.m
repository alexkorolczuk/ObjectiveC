//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Aleksandra Korolczuk on 2017-08-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(NSString *) size andTop:(NSArray *) toppings
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
        _size = @"large";
        _toppings = @[@"pepperoni", @"cheese"];
    }
    return self;

}



-(NSString *) pizzaSize
{
    return self.size;
}

- (NSArray *)pizzaToppings
{
    return self.toppings;
}




@end
