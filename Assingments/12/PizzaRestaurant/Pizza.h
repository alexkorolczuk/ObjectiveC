//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Aleksandra Korolczuk on 2017-08-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Pizza;

@interface Pizza : NSObject

typedef enum{
    
    small,
    medium,
    large
    
} PizzaSize;



@property (nonatomic, assign) PizzaSize size;
@property (nonatomic) NSArray *toppings;


- (instancetype)initWithSize:(PizzaSize) size andTop:(NSArray *) toppings;
- (NSArray *)pizzaToppings;
- (instancetype)initLargePepperoni;
extern NSString * const PizzaType_toString[];


@end
