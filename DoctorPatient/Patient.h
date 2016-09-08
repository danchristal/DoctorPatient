//
//  Patient.h
//  DoctorPatient
//
//  Created by Dan Christal on 2016-09-08.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;
@property BOOL healthCareCard;
@property (nonatomic, strong) NSMutableSet *symptoms;
@property (nonatomic, strong) NSMutableArray *prescriptions;
@property (nonatomic, strong) Doctor *doctor;

-(instancetype)initWithName:(NSString *)name AndAge:(NSNumber *)age HasHealthCare:(BOOL)healthCare;
-(void)visitDoctor;
-(BOOL)hasHealthCare;
-(void)addSymptom:(NSString *)symptom;
-(void)listPrescriptions;

@end
