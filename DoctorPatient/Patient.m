//
//  Patient.m
//  DoctorPatient
//
//  Created by Dan Christal on 2016-09-08.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)name AndAge:(NSNumber *)age{
    
    self = [super init];
    
    if (self){
        _name = name;
        _age = age;
    }
    
    return self;
}

@end
