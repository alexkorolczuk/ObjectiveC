//
//  ScoreKeeper.m
//  Maths
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "ScoreKeeper.h"
#import "InputHandler.h"

@implementation ScoreKeeper


- (instancetype)initWithInput:(InputHandler *) iph 
{
    
    self = [super init];
    if (self) {
        
        int w=0;
        int r=0;
        if ([iph.score isEqualToString:@"Wrong!"]){
            w++;
            NSLog(@"wrong %ld",(long) w);
        } else if ([iph.score isEqualToString:@"Right!"]) {
            r++;
            NSLog(@"right %ld", (long) r);
        }
        _wrong = (long) w;
        _right = (long) r;
        
    }
    return self;
}



- (NSString *) showScores
{
    if (self.wrong == NULL)
        self.wrong = 0;
    if (self.right == NULL)
        self.right = 0;
   
    int sum_of_answers = (int)self.wrong + (int)self.right;
   // NSLog(@"%ld", self.right);
    int percentage_right =  ( (int)self.right /100 ) * sum_of_answers;
    
    NSString *sum_up = [NSString stringWithFormat:@"Your score so far is: %ld right, %ld wrong --------- %d right answers", self.right, self.wrong, percentage_right];
    
    return sum_up;
}



@end
