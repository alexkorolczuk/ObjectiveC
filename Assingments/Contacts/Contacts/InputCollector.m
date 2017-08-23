//
//  InputCollector.m
//  Contacts
//
//  Created by Aleksandra Korolczuk on 2017-08-22.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector


- (instancetype)init
{
    self = [super init];
    if (self) {
        _command_list = [[NSMutableArray alloc]init];
    }
    return self;
}


 - (NSString *)inputForPrompt:(NSString *)promptString
{
    
    NSLog(@"%@", promptString);
    char myStr[256];
    fgets(myStr, 256, stdin);
    
    NSString *input = [[NSString stringWithCString:myStr encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

 //   [self.command_list addObject:input];
    
    return input;
}


- (NSMutableArray *)saveHistory:(NSString *)input
{
    
    [self.command_list addObject:input];
    
    return _command_list;
}

//
//-(void)showHistory
//{
//    NSMutableArray *array = [array ]
//    
//
//    NSUInteger array_lenght = [array count];
//    NSLog(@"%lu", (unsigned long)array_lenght);
//    if (array_lenght >= 3) {
//    NSString *last_commands = [NSString stringWithFormat:@"%@, %@, %@", self.command_list[array_lenght-1], self.command_list[array_lenght-2], self.command_list[array_lenght-3]];
//        NSLog(@"%@", last_commands);
//    }
//    else
//        NSLog(@"Not enough commands");
//}




@end



