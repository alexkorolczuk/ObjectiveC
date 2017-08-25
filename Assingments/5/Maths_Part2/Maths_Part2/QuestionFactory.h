//
//  QuestionFactory.h
//  Maths_Part2
//
//  Created by Aleksandra Korolczuk on 2017-08-24.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject


@property (nonatomic) NSArray * question_generator;

- (Question *)generateRandomQuestion;


@end
