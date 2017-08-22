//
//  Student.h
//  Exercise_properties
//
//  Created by Aleksandra Korolczuk on 2017-08-18.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

// proberties create variabiles + getter and setters! zamiast konstruktora, bla bla bla
@property (nonatomic, assign, readwrite)  int stdID; // kreauje getter for you. readonly kreauje tylko getter.
@property (strong) NSString *school; //
//nonatomic -
// atomic  - tylko jesli uzywamy multithread. da ci solid value;
// strong - tak dlugo jak Student jest alive, tak dlugo school bedzie sie utrzymywac.

- (instancetype)initWithId:(int) stdId name:(NSString *) name gpa:(float) gpa;
- (float) getGpa;
- (NSString *) getName;
- (int) getID;
- (void) setName:(NSString *) newName;



@end
