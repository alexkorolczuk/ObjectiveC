//
//  main.m
//  PigLatin
//
//  Created by Aleksandra Korolczuk on 2017-08-25.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinTranslator.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *input = @"Albcwm  wor";
        NSArray *array = [input stringByPigLatinization:input];
        //NSLog(@"%@", array);
        
        
        
    }
    return 0;
}
