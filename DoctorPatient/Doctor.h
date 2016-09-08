//
//  Doctor.h
//  DoctorPatient
//
//  Created by Dan Christal on 2016-09-08.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>

//@protocol DoctorProtocol <NSObject>
//
//-(void)acceptPatient:(Patient *)patient;
//
//@end

@class Patient;

@interface Doctor :  NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableSet *acceptedPatients;
@property (nonatomic, strong) NSDictionary *symptomMedications;

//@property (nonatomic, strong) Patient *patient;

-(instancetype)initWithName:(NSString *)name AndSpecialization:(NSString *)specialization;

-(BOOL)acceptPatient:(Patient *)patient;

-(void)requestMedication:(Patient *)patient;

@end


