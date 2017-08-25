//
//  QuestionManager.m
//  Maths_Part2
//
//  Created by Aleksandra Korolczuk on 2017-08-23.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
    }
    return self;
}

-  (NSString *)timeOutput
{
    
    int sum = 0;
    
    NSString * time_string;
    for (Question* question in _questions ){
        
        NSTimeInterval question_time= [question answerTime];
        sum += (int) question_time;
        
        int average = sum / ( [_questions count]);
        time_string  = ([NSString stringWithFormat:@"Average time: %d,total time is: %d", average, sum]);
    }
    
    return time_string;

}

@end
