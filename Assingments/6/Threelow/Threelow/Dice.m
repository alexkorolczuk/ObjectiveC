//
//  Dice.m
//  Threelow
//
//  Created by Aleksandra Korolczuk on 2017-08-26.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "Dice.h"

@implementation Dice




- (int)rollTheDice
{
    _value = arc4random_uniform(6) +1;
    
    return _value;
    
}




@end
