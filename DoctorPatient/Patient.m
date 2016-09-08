//
//  Patient.m
//  DoctorPatient
//
//  Created by Dan Christal on 2016-09-08.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient



-(instancetype)initWithName:(NSString *)name AndAge:(NSNumber *)age HasHealthCare:(BOOL)healthCare{
    
    self = [super init];
    
    if (self){
        _name = name;
        _age = age;
        _healthCareCard = healthCare;
        _symptoms = [[NSMutableSet alloc] init];
        _prescriptions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)visitDoctor{
    if([self.doctor acceptPatient:self])
        NSLog(@"The Doctor will accept me.");
    else
        NSLog(@"The Doctor will not accept me.");
}

-(BOOL)hasHealthCare{
    return self.healthCareCard;
}

-(void)addSymptom:(NSString *)symptom{
    [self.symptoms addObject:symptom];
}

-(void)listPrescriptions{
    for (NSString* prescription in self.prescriptions)
        NSLog(@"Prescription: %@", prescription);
}


@end
