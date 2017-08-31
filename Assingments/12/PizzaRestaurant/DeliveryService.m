//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Aleksandra Korolczuk on 2017-08-30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"
#import "DeliveryCar.h"


@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _pizza_deliveries = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)deliverPizza:(Pizza *)pizza
{
    DeliveryCar *car = [[DeliveryCar alloc]init];
    [car deliverPizza:pizza];
    
    
}


-(NSArray *)pizzasDelivered:(Pizza *)pizza
{
    NSString *description = [NSString stringWithFormat: @"Delivered: %@, %@",PizzaType_toString[pizza.size], pizza.toppings];
    NSLog(@"%@",description);
    [self.pizza_deliveries addObject:description];
    
    return _pizza_deliveries;
}



@end
