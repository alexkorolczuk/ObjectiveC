//
//  Person.m
//  Assingment3
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "Person.h"

@implementation Person


- (instancetype)initWithName: (NSString*) name andAge:(NSInteger) age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

- (void) print
{
    NSLog(@"%@ is %ld years old", self.name, self.age);
}



@end
