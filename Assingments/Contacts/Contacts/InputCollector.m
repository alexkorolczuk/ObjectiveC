//
//  InputCollector.m
//  Contacts
//
//  Created by Aleksandra Korolczuk on 2017-08-22.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector



 - (NSString *)inputForPrompt:(NSString *)promptString
{
    
    NSLog(@"%@", promptString);
    char myStr[256];
    fgets(myStr, 256, stdin);
    
    NSString *input = [[NSString stringWithCString:myStr encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

 //   [self.command_list addObject:input];
    
    return input;
}




@end



