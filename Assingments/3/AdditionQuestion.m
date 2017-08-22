//
//  AdditionQuestion.m
//  Maths
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

// create object, not class method, so instance method

- (instancetype)init
{
    self = [super init];
    if (self) {
        //// constructing int answer:
        int number_1 = arc4random_uniform(100)+ 10;
        int number_2 = arc4random_uniform(100)+ 10;
        int answer = number_1 + number_2;
        _answer = [NSString stringWithFormat: @"%d", answer];
        //// constructing NSString question:
        _question = [NSString stringWithFormat: @"%d + %d = ?\n", number_1, number_2];
    
        
    }
    return self;
}




@end
