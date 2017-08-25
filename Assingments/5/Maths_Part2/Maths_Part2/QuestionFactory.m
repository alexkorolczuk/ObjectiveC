//
//  QuestionFactory.m
//  Maths_Part2
//
//  Created by Aleksandra Korolczuk on 2017-08-24.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory


- (instancetype)init
{
    self = [super init];
    if (self) {
        _question_generator = [[NSArray alloc]init];
    }
    return self;
}


- (Question *)generateRandomQuestion
{

    _question_generator = @[@"AdditionQuestion", @"SubtractionQuestion", @"DivisionQuestion", @"MultiplicationQuestion"];
    
    int random_question =  arc4random_uniform(3);
    return [[NSClassFromString(self.question_generator[random_question]) alloc]init];

}
@end


