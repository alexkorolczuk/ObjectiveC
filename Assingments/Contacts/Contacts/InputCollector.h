//
//  InputCollector.h
//  Contacts
//
//  Created by Aleksandra Korolczuk on 2017-08-22.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (nonatomic) NSMutableArray *command_list;

- (NSString *)inputForPrompt:(NSString *)promptString;
- (NSMutableArray *)saveHistory:(NSString *)input;
- (void)showHistory;


@end
