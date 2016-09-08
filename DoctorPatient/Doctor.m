//
//  Doctor.m
//  DoctorPatient
//
//  Created by Dan Christal on 2016-09-08.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(instancetype)initWithName:(NSString *)name AndSpecialization:(NSString *)specialization{
    
    self = [super init];
    
    if(self) {
        _name = name;
        _specialization = specialization;
    }
    
    return self;
    
}

@end
