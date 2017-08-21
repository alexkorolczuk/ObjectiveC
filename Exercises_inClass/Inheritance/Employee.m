//
//  Employee.m
//  Assingment3
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (instancetype)initWithName: (NSString*) name andAge:(NSInteger) age andEdu:(NSString*) education
{
    self = [super initWithName:name andAge: age]; // obiekt person + education
    if (self) {
        _education = education;
    }
    return self;
}


-(void) print{
    NSLog(@"%@ is %ld years old and went to %@", self.name, self.age, self.education);

}

@end
