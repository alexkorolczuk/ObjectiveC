//
//  main.m
//  Maths_Part2
//
//  Created by Aleksandra Korolczuk on 2017-08-23.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "AdditionQuestion.h"
#import "DivisionQuestion.h"
#import "MultiplicationQuestion.h"
#import "SubtractionQuestion.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"MATHS!");
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *questionmanager = [[QuestionManager alloc] init];
        QuestionFactory *questionfactory = [[QuestionFactory alloc] init];

        
        
        
        while(1) {
            
            //Question *q1 = [[Question alloc] init];
            Question *q1 = [questionfactory generateRandomQuestion];
            [questionmanager.questions addObject:q1];
            
            NSLog(@"%@", [q1 question]);
            
            NSString *input = [InputHandler getUserInput];
            if ([q1 isCorrect:input]) {
                NSLog(@"Correct!");
                [score setRight:[score right] + 1];
            } else {
                NSLog(@"Wrong! The asnwer is %ld.", [q1 answer]);
                [score setWrong:[score wrong] + 1];
            }
            
            [score printCurrentState];
            int difference = [q1 answerTime];
            if ( difference >60){
                long seconds = lroundf([q1 answerTime]);
                int mins = (seconds % 3600) / 60;
                int secs = seconds % 60;
                NSLog(@"Your answer time is %d minutes and %d seconds", mins, secs);
            } else
                NSLog(@"Fast! Your answer time is just: %d seconds",difference);
            
            NSLog(@"%@", [questionmanager timeOutput]);
            
            
        
            NSLog(@"Do you want to quit? press 'q'.");
            NSString *quit = [InputHandler getUserInput];
            if ([quit isEqualToString:@"q"]) {
                break;
            } else {
                NSLog(@"Keep going!");
            }
        }
        
    }
    return 0;
}
