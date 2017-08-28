//
//  GameController.m
//  Threelow
//
//  Created by Aleksandra Korolczuk on 2017-08-26.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController


- (instancetype)init
{
    self = [super init];
    if (self) {
        _array_of_dices = [[NSMutableArray alloc]init];
        _array_of_holds = [[NSMutableArray alloc]init];


    }
    return self;
}



- (void)holdDie:(Dice *) dice withNumber:(NSString *)number
{
    [_array_of_dices removeObject:dice];
    //NSString * value = [NSString stringWithFormat:@"%d", dice.value];
    [_array_of_holds addObject:dice];

}




@end

