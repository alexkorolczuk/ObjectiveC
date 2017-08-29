//
//  main.m
//  Patients&Doctors
//
//  Created by Aleksandra Korolczuk on 2017-08-29.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSMutableArray *list = [[NSMutableArray alloc]init];
        Patient *p1 = [[Patient alloc]initWithName:@"Anna" andAge:@"29" andCard:YES];

        Doctor *d1 = [[Doctor alloc]initWithName:@"Brian" andSpec:@"GP" andList:list];
        
        if ([d1 acceptPatient:p1] == YES)
            NSLog(@"PATIENT: %@", [p1 visitingDoctor]);
            NSLog(@"DOCTOR: Welcome, my name is dr %@", d1.name);
            NSLog(@"PATIENT: I have a flu");
            NSLog(@"DOCTOR: Your medication is %@",[p1 requestMedication:d1 withSymptoms:@"flu"]);
            [d1 givingPrescription:p1 withPrescribtion:[p1 requestMedication:d1 withSymptoms:@"flu"]];
            NSLog(@"DOCTOR: I want to see all presctiptions of patient %@: %@", p1.name, p1.prescriptions);
        
    }
    return 0;
}
