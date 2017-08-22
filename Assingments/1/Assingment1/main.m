//
//  main.m
//  Assingment1
//
//  Created by Aleksandra Korolczuk on 2017-08-17.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput (int maxLenght, NSString *prompt) {
    
    if (maxLenght < 1){
        maxLenght = 255;
    }
    
    NSLog(@"@%@ ", prompt);
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if (result != NULL){
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {

            while(YES){
                
            NSString *finalOption = getUserInput(255, @"Press 1 for uppercase, 2 for lowercase, 3 for numberize(numbers only), 4 for canadianize, 5 for de-space it:  ");
            
            NSString *finalString = getUserInput(255, @"Input your string or number");
            

            // -------------------- Uppercase:
            if ([finalOption isEqualToString:@"1"]){
                NSString *upperCase = [finalString uppercaseString];
                NSLog(@"Your input to Uppercase is %@", upperCase);

            }
            // -------------------- Lowercase:
            if([finalOption isEqualToString:@"2"]){
                NSString *lowerCase = [finalString lowercaseString];
                NSLog(@"Your input to lowercase is %@", lowerCase);
            }
            // --------------------Numberize
            if([finalOption isEqualToString:@"3"]){
                int num = [finalString intValue];
                printf("your number is: %d\n", num);
            }
            // --------------------Canadianize
                if([finalOption isEqualToString:@"4"]){
                NSString *eh = @"eh";
                NSString *canadian = [finalString stringByAppendingString: eh];
                NSLog(@"Your canadian word  is %@",canadian);
                }
            
            // --------------------De-space
                if([finalOption isEqualToString:@"5"]){
                    NSString *nospaces = [finalString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"Your string with no spaces is %@",nospaces);
                }
                // --------------------Respond
                if ([finalString hasSuffix:@"?"])
                    NSLog(@"I dont know");
                else if ([finalString hasSuffix:@"!"])
                    NSLog(@"Calm down...");

        }
    }
    return 0;
}


