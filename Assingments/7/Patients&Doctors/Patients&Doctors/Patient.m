//
//  Patient.m
//  Patients&Doctors
//
//  Created by Aleksandra Korolczuk on 2017-08-29.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"


@implementation Patient



- (instancetype)initWithName:(NSString *)name andAge:(NSString *)age andCard:(BOOL) card
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _healthcard = card;
        _prescriptions = [[NSMutableDictionary alloc]init];
    }
    return self;
}



- (NSString *)visitingDoctor
{
    
    return [NSString stringWithFormat:@"I am visiting doctor"];
    
    
}


- (NSString *)requestMedication:(Doctor *) doc withSymptoms:(NSString *)symptoms
{
    
    NSString *medication;
        if ([symptoms isEqualToString:@"flue"])
            medication = @"antibiotics";
        else if([symptoms isEqualToString:@"pneumonia"])
            medication = @"no cure";
        else
            medication = @"regular pills";
    
    
    return medication;
}

@end
