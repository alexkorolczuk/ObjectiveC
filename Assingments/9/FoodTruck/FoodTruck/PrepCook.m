//
//  PrepCook.m
//  FoodTruck
//
//  Created by Aleksandra Korolczuk on 2017-08-28.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "PrepCook.h"
#import "FoodTruck.h"


@implementation PrepCook

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food
{
    if ([food isEqualToString:@"bao"]) {
        return 10.0;
    }
    return 1.2;
}

@end
