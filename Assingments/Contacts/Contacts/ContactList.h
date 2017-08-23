//
//  ContactList.h
//  Contacts
//
//  Created by Aleksandra Korolczuk on 2017-08-22.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject


@property (nonatomic) NSMutableArray *contact_list;


-(void)addContact:(Contact *)newContact;
-(void)printContactList;
- (void) displaySingleContact:(int)contactNumber;
- (void) searchContacts:(NSString *)detail;
- (BOOL) avoidDuplicates:(NSString *)email;




@end
