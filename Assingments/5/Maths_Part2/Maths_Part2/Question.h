//
//  Question.h
//  Maths_Part2
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property (assign) NSInteger rightValue;
@property (assign) NSInteger leftValue;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;



- (instancetype) init;
- (BOOL) isCorrect: (NSString *) userAnswer;
- (NSInteger) answer;
- (NSTimeInterval)answerTime;
- (void) generateQuestion;



@end
