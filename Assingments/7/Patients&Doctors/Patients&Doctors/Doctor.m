//
//  Doctor.m
//  Patients&Doctors
//
//  Created by Aleksandra Korolczuk on 2017-08-29.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"


@implementation Doctor



- (instancetype)initWithName:(NSString *)name andSpec:(NSString *)spec andList:(NSMutableArray *) list
{
    self = [super init];
    if (self) {
        _name = name;
        _spec = spec;
        _list = list;
    }
    return self;
}


- (BOOL)acceptPatient:(Patient *)patient
{
    
    BOOL accepted = NO;
    if  (patient.healthcard == YES){
        [self.list addObject:patient];
        accepted = YES;
        
    } else
        accepted = NO;
    
    return accepted;
        
}


-(void) givingPrescription:(Patient *)patient withPrescribtion:(NSString *) presc
{
    
    [patient.prescriptions setObject:presc forKey:self.name];
    
}





@end


