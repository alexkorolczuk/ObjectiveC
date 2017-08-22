//
//  Employee.h
//  Assingment3
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
//@class Employer;   zamiast importowac caly header, zeby moc uzywac obiektu Employer


@interface Employee : Person

@property(nonatomic) NSString *education;
- (instancetype)initWithName: (NSString*) name andAge:(NSInteger) age andEdu:(NSString*) education;
- (void) print;




// -(void) what:(Employer *) emp; nie uzywamy niczego z Employer header, ALE potrzebujemy tego obiektu.


@end
