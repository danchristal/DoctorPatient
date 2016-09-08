//
//  Doctor.m
//  DoctorPatient
//
//  Created by Dan Christal on 2016-09-08.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

-(NSDictionary *)symptomMedications{
    if(!_symptomMedications){
        _symptomMedications = [[NSDictionary alloc]init];
        _symptomMedications = @{@"cough": @"cough syrup",
                                @"sore throat": @"penicillin",
                                @"headache":@"advil"
                                };
    }
    return _symptomMedications;
}

-(instancetype)initWithName:(NSString *)name AndSpecialization:(NSString *)specialization{
    
    self = [super init];
    
    if(self) {
        _name = name;
        _specialization = specialization;
        _acceptedPatients = [[NSMutableSet alloc] init];
    }
    
    return self;
    
}

-(BOOL)acceptPatient:(Patient *)patient{
    
    if([self.acceptedPatients containsObject:patient])
        return true;
    else if([patient hasHealthCare]){
        [self.acceptedPatients addObject:patient];
        return true;
    }
    return false;
}

-(void)requestMedication:(Patient *)patient{

    if([self.acceptedPatients containsObject:patient]){
        for (NSString * symptom in patient.symptoms) {
            if(self.symptomMedications[symptom]){
                [patient.prescriptions addObject:self.symptomMedications[symptom]];

                
            }
            
        }
        
    }
}

@end
