//
//  NSString+PigLatinTranslator.m
//  PigLatin
//
//  Created by Aleksandra Korolczuk on 2017-08-25.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "NSString+PigLatinTranslator.h"

@implementation NSString (PigLatinTranslator)






- (NSArray *)stringByPigLatinization:(NSString *) input
{
    
    NSString *vowels = @"aeiouAEIOU";
    NSString *consonants = @"bcdfghklmnpqrstvwxyzBCDFGHKLMNPRSTWYZX";
       // NSString *clusters =@"ch sh sm st th st";
    
    NSArray *array_of_words = [[input componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]mutableCopy];
    

    for (int i = 0;i<[array_of_words count]; i++) {
     
        NSString* word = array_of_words[i];
        
        if([word length]>0) {

        //divide the word:
        NSLog(@"%@", word);
        NSMutableString *first_character = [[word substringToIndex:1] mutableCopy];
        NSMutableString *second_character =[[word substringWithRange:NSMakeRange(1, 1)]mutableCopy];
        NSMutableString *last_character = [[word substringWithRange:NSMakeRange([word length]-1, 1)]mutableCopy];
        NSMutableString *piglatin;
        NSMutableString *whats_left = [[word substringWithRange:NSMakeRange(3, [word length] - 3)]mutableCopy];
        NSMutableArray *new_word = [[NSMutableArray alloc]init];

        if ([vowels rangeOfString:first_character].location != NSNotFound ) {
           
            piglatin = [@"ay" mutableCopy];
            first_character = piglatin;
            last_character = piglatin;
            first_character = [[second_character uppercaseString]mutableCopy];
            second_character = [[word substringWithRange:NSMakeRange(2, 1)]mutableCopy];
            
            
            [new_word addObject:first_character];
            [new_word addObject:second_character];
            if ([word length] >3)
            [new_word addObject:whats_left];
            
            [new_word addObject:last_character];


            NSLog(@"%@ %@ %@ %@",first_character, second_character, whats_left, last_character);
            
            
            
        } else if ([consonants rangeOfString:first_character].location != NSNotFound ) {
           
            piglatin = first_character;
            NSLog(@"%@", piglatin);
            piglatin = [[piglatin stringByAppendingString:@"ay"]mutableCopy];
            last_character = piglatin;
            first_character = [[second_character uppercaseString]mutableCopy];
            second_character = [[word substringWithRange:NSMakeRange(2, 1)]mutableCopy];

            
            [new_word addObject:first_character];
            [new_word addObject:second_character];
            if ([word length] >3){
            [new_word addObject:whats_left];
            }
            [new_word addObject:last_character];

            
        }
        
        
        NSString *string = [new_word componentsJoinedByString:@""];
        NSLog(@"%@", string);

        }
    }
    


    return array_of_words;
}

@end
