//
//  main.m
//  DoctorPatient
//
//  Created by Dan Christal on 2016-09-08.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Doctor *doc = [[Doctor alloc] initWithName:@"Doc" AndSpecialization:@"None"];
        Patient *p1 = [[Patient alloc] initWithName:@"Bob" AndAge:@90 HasHealthCare:NO];
        Patient *p2 = [[Patient alloc] initWithName:@"Joe" AndAge:@40 HasHealthCare:YES];
        
        
        p1.doctor = doc;
        [p1 visitDoctor];   //not accepted since no health care
        
        [p2 addSymptom:@"cough"];
        p2.doctor = doc;
        [p2 visitDoctor];
        [p2.doctor requestMedication:p2];
        [p2 listPrescriptions]; //cough syrup
        
        [p2 addSymptom:@"sore throat"];
        [p2 visitDoctor];
        [p2.doctor requestMedication:p2];
        [p2 listPrescriptions]; //cough syrup & penicillin
        
    }
    return 0;
}
