//
//  SubtractionQuestion.m
//  Maths_Part2
//
//  Created by Aleksandra Korolczuk on 2017-08-24.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion



- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void) generateQuestion {
    
    
    [super setQuestion:[NSString stringWithFormat: @"%ld - %ld = ?",(long)super.rightValue, (long)super.leftValue]];
    
    NSInteger answer = super.rightValue - super.leftValue;
    [super setAnswer: answer];
    
}
@end
