//
//  Person.h
//  Assingment3
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


@property (nonatomic) NSString *name;
@property(nonatomic, assign) NSInteger age;
- (instancetype)initWithName: (NSString*) name andAge:(NSInteger) age;
- (void) print;










@end
