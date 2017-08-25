//
//  AdditionQuestion.m
//  Maths_Part2
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//


#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightValue = arc4random_uniform(100);
        _leftValue = arc4random_uniform(100);
        _question = [NSString stringWithFormat: @"%ld + %ld = ?",(long)_rightValue, (long)_leftValue];
        _answer = _rightValue + _leftValue;
        _startTime = [NSDate date];
    }
    return self;
}

-(NSInteger) answer
{
    _endTime = [NSDate date];
    return _answer;
}

// zamiast wrzucac to do Input hander,  obiekt AdQUestion to sprawdzi.
- (BOOL) isCorrect: (NSString *) userAnswer {
    return [[NSString stringWithFormat:@"%ld", (long)self.answer] isEqualToString:[NSString stringWithFormat:@"%ld", (long)[userAnswer integerValue]]];
}

- (NSTimeInterval)answerTime {
    
     return [ _endTime timeIntervalSinceDate:_startTime];
    
}

- (void) generateQuestion
{
    
}




@end
