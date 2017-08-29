//
//  main.m
//  FoodTruck
//
//  Created by Aleksandra Korolczuk on 2017-08-28.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "PrepCook.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        Cook *cook1 = [[Cook alloc] init];
        truckA.delegate = cook1;
        truckB.delegate = cook1;
        
        
        PrepCook *prepcook1 = [[PrepCook alloc] init];

        truckA.delegate = prepcook1;
        truckB.delegate = prepcook1;
        
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
        
        
        
        
        
        
        
        

    }
    return 0;
}
