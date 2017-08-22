//
//  Student.m
//  Exercise_properties
//
//  Created by Aleksandra Korolczuk on 2017-08-18.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "Student.h"


@interface Student()
// define private properties
@property NSString *something;

@end


// private
@implementation Student{
    
    // private instance variables
    int _id;
    NSString *_name;
    float _gpa;  // _by convention
    
    
}

// konstruktor:

- (instancetype)initWithId:(int) stdId name:(NSString *) name gpa:(float) gpa // to musimy dodac do .h zeby bylo public.
{
    self = [super init];
    if (self) {
        _id = stdId;
        _name = name;
        _gpa = gpa;
        
    }
    return self;
}

- (void) setName:(NSString *) newName {
    _name = newName;
}


// getters:

-(int) getID {
    return _id;
    
}

- (NSString *) getName {
    return _name;
}

- (float) getGpa {
    return _gpa;
}






@end
