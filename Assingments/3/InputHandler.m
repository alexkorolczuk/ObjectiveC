//
//  InputHandler.m
//  Maths
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "InputHandler.h"
#import "AdditionQuestion.h"

@implementation InputHandler

- (instancetype)initWithInput:(NSString *)input withAnswer:(NSString *)answer
{
    self = [super init];
    if (self) {
        
        NSString *score;
        
        if ([input isEqualToString: answer]){
            score = @"Right!";
        } else if ([input isEqualToString:@"quit"]){
            score = @"Bye!";
        } else {
            score = @"Wrong!";
        }
        
        _score = score;
 
    }
    return self;
}

+ (NSString *)getUserInput
{
    char my_string[256];
    fgets(my_string, 265, stdin);
    
    NSString *input_string = [[NSString stringWithCString:my_string encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    return input_string;
    
}


 - (NSString*) compareInput:(NSString *)input withAnswer:(NSString *)answer
{
    BOOL gameOn = YES;
    NSString *score;
    
    if ([input isEqualToString: answer]){
        score = @"Right!";
    } else if ([input isEqualToString:@"quit"]){
        score = @"Bye!";
        gameOn = NO;
    } else {
        score = @"Wrong!";
    }

    return score;

}




@end


