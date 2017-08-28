//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Aleksandra Korolczuk on 2017-08-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject


@property (nonatomic, assign) NSString *size;
@property (nonatomic) NSArray *toppings;



- (instancetype)initWithSize:(NSString *) size andTop:(NSArray *) toppings;
-(NSString *) pizzaSize;
- (NSArray *)pizzaToppings;
- (instancetype)initLargePepperoni;


@end
