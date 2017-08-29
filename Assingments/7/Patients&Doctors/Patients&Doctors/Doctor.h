//
//  Doctor.h
//  Patients&Doctors
//
//  Created by Aleksandra Korolczuk on 2017-08-29.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@class Patient;

@interface Doctor : NSObject



@property (nonatomic) NSString *spec;
@property (nonatomic) NSString *name;
@property (nonatomic) NSMutableArray *list;


- (instancetype)initWithName:(NSString *)name andSpec:(NSString *)spec andList:(NSMutableArray *) list;
- (BOOL)acceptPatient:(Patient *)patient;
-(void) givingPrescription:(Patient *)patient withPrescribtion:(NSString *) presc;



@end
