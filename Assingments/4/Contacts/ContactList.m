//
//  ContactList.m
//  Contacts
//
//  Created by Aleksandra Korolczuk on 2017-08-22.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList



- (instancetype)init
{
    self = [super init];
    if (self) {
        _contact_list = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact

{
    [self.contact_list addObject:newContact];
}

-(void)printContactList
{
    
    NSUInteger array_lenght = [self.contact_list count];

    for (int i=0; i< array_lenght; i++){
        
        NSLog(@"%d : name: %@ , email: %@, phone: %@", i, [self.contact_list[i] valueForKey:@"name"],[self.contact_list[i] valueForKey:@"email"], [self.contact_list[i] valueForKey:@"phone"]);
    }
}

- (void) displaySingleContact:(int)contactNumber
{
    
    NSLog(@"%d : name: %@ , email: %@, phone: %@", contactNumber, [self.contact_list[contactNumber] valueForKey:@"name"],[self.contact_list[contactNumber] valueForKey:@"email"], [self.contact_list[contactNumber] valueForKey:@"phone"]);
}

- (void) searchContacts:(NSString *)detail
{
    NSUInteger array_lenght = [self.contact_list count];
    
    for (int i=0; i< array_lenght; i++){
        if ([detail isEqualToString: [self.contact_list[i] valueForKey:@"name"]] ||
            [detail isEqualToString: [self.contact_list[i] valueForKey:@"email"]] ||
            [detail isEqualToString: [self.contact_list[i] valueForKey:@"phone"]])
        {
            
            NSLog(@"Found contact: name: %@ , email: %@, phone: %@", [self.contact_list[i] valueForKey:@"name"],[self.contact_list[i] valueForKey:@"email"], [self.contact_list[i] valueForKey:@"phone"]);
        }
        else
            NSLog(@"Contact not found");
    }
}
- (BOOL) avoidDuplicates:(NSString *)email
{
    NSUInteger array_lenght = [self.contact_list count];
    
    for (int i=0; i< array_lenght; i++){
        if ([email isEqualToString: [self.contact_list[i] valueForKey:@"email"]]) {
            NSLog(@"This contact already exsists.");
        return NO;
        }
    }
    return YES;


}

@end
