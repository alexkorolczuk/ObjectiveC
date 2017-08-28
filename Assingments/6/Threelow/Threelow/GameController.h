//
//  GameController.h
//  Threelow
//
//  Created by Aleksandra Korolczuk on 2017-08-26.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"


@interface GameController : NSObject

@property (nonatomic) NSMutableArray *array_of_dices;
@property (nonatomic) NSMutableArray *array_of_holds;


- (void)holdDie:(Dice *) dice withNumber:(NSString *)number;



@end
