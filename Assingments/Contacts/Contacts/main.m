//
//  main.m
//  Contacts
//
//  Created by Aleksandra Korolczuk on 2017-08-22.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        NSLog(@"MENU: \n new - Create a new contact \n list - List all contacts \n show # - Show chosen contact \n find name or email - Find contact \n  history - Show last 3 commands \n quit - Exit Application\n ");
        
        
        ContactList *contactlist = [[ContactList alloc]init];
    
        while(YES){

            
// -----------------------  TAKE MENU USER INPUT : --------------
        
        InputCollector *ic1 = [[InputCollector alloc]init];
        NSString *userInput = [ic1 inputForPrompt:@"Please choose one of the options"];
        NSMutableArray *history = [ic1 saveHistory:userInput];


        
// -----------------------   QUIT -------------------------
        if([userInput isEqualToString:@"quit"]){
            NSLog(@"Bye!");
            break;
        }
            
// -----------------------   NEW & AVOID DUPLICATES & ADD PHONE -------------------------
        if([userInput isEqualToString:@"new"]){
            Contact *contact = [[Contact alloc]init];
            NSString *email = [ic1 inputForPrompt:@"Please enter email address"];
            
            if ([contactlist avoidDuplicates:email]) {
                NSString *name = [ic1 inputForPrompt:@"Please type contact name"];
                [contact setName:name];
                [contact setEmail:email];
                
               NSString *phone = @"";
                [contact setPhone:phone];

                while ([[ic1 inputForPrompt:@"Do you want to add phone number? y/n"] isEqualToString:@"y"]){
                    
                    NSString *first_number =[contact.phone stringByAppendingString:@" "];
                    NSString *next_phone = [ic1 inputForPrompt:@"Please type of phone (i.e.Mobile) and number a format XXX-XXX-XXXX"];
                    NSString *phone_number = [first_number stringByAppendingString:next_phone];
                    [contact setPhone:phone_number];

                }

                [contactlist addContact:contact];
            }
            
        }

// -----------------------   LIST -------------------------
          if([userInput isEqualToString:@"list"]){
              [contactlist printContactList];
              
          }

// -----------------------   SHOW -------------------------
            
            NSUInteger array_lenght = [contactlist.contact_list count];
            NSArray *divided_input  = [userInput componentsSeparatedByString:@" "];
            
            
            if([[divided_input objectAtIndex:0] isEqualToString:@"show"]){
                NSString *string_number = [divided_input objectAtIndex:1];
                int contactNumber = [string_number intValue];
                
                    if (contactNumber < array_lenght)
                            [contactlist displaySingleContact:contactNumber];
                    else
                            NSLog(@"Contact not found!");
            }
            
// -----------------------   FIND -------------------------
            if([[divided_input objectAtIndex:0] isEqualToString:@"find"]){
                NSString *detail = [divided_input objectAtIndex:1];
                [contactlist searchContacts:detail];
                
            }
// -----------------------   FIND -------------------------
            if([[divided_input objectAtIndex:0] isEqualToString:@"find"]){
                NSString *detail = [divided_input objectAtIndex:1];
                [contactlist searchContacts:detail];
                
            }
            
// -----------------------   HISTORY -------------------------
            if([userInput isEqualToString:@"history"]){
                
                NSUInteger array_lenght = [history count];
                if (array_lenght >= 3) {
                    NSString *last_commands = [NSString stringWithFormat:@"%@, %@, %@", ic1.command_list[array_lenght-1], ic1.command_list[array_lenght-2], ic1.command_list[array_lenght-3]];
                    NSLog(@"%@", last_commands);
                }
                else
                NSLog(@"Not enough commands");
                }
            
        }
        
    }
    return 0;
}






