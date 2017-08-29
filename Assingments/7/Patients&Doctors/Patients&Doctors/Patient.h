//
//  Patient.h
//  Patients&Doctors
//
//  Created by Aleksandra Korolczuk on 2017-08-29.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"


@class Doctor;


@interface Patient : NSObject



@property (nonatomic) NSString *age;
@property (nonatomic) NSString *name;
@property (nonatomic) BOOL healthcard;
@property (readonly) NSMutableDictionary *prescriptions;



- (instancetype)initWithName:(NSString *)name andAge:(NSString *)age andCard:(BOOL) card;
- (NSString *)visitingDoctor;
- (NSString *)requestMedication:(Doctor *) doc withSymptoms:(NSString *)symptoms;


@end
