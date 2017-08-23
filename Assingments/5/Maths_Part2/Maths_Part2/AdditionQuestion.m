//
//  AdditionQuestion.m
//  Maths_Part2
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//


#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        _num1 = arc4random_uniform(100);
        _num2 = arc4random_uniform(100);
        _question = [NSString stringWithFormat: @"%ld + %ld = ?",(long)_num1, (long)_num2];
        _answer = _num1 + _num2;
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
    
     return [_startTime timeIntervalSinceDate:_endTime];
    
}





@end
