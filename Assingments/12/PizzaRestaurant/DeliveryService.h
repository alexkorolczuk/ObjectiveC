//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Aleksandra Korolczuk on 2017-08-30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface DeliveryService : NSObject


@property (nonatomic) NSMutableArray *pizza_deliveries;

-(void)deliverPizza:(Pizza *)pizza;
-(NSArray *) pizzasDelivered:(Pizza *)pizza;




@end
