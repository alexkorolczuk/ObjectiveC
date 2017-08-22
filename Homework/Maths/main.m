//
//  main.m
//  Maths
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"



 InputHandler* applicationLoop()
{
    AdditionQuestion *q1 = [[AdditionQuestion alloc]init];
    NSLog(@"%@", q1.question);
    NSString *input = [InputHandler getUserInput];
    InputHandler *iph1 = [[InputHandler alloc] initWithInput:input withAnswer:q1.answer];
    NSLog(@"%@", iph1.score);

    return iph1;
}



ScoreKeeper *scorekeeper(InputHandler * hp)
{
    ScoreKeeper *sk1 = [[ScoreKeeper alloc]initWithInput:hp];
    return sk1;
   
}




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSLog(@"Welcome to MATHS game\n");
        

        
        while(YES)
        {
        InputHandler *iph1 = applicationLoop();
            if ([iph1.score isEqualToString:@"Bye!"]){
                break;
            }
            
            ScoreKeeper *s = scorekeeper(iph1);
             NSString *sum_up = [s showScores];

        }
        

           // NSLog(@"%ld", (long)sk1.wrong);
        
            
        
        
    }
    return 0;
}
