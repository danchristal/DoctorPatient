//
//  Doctor.h
//  DoctorPatient
//
//  Created by Dan Christal on 2016-09-08.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;

-(instancetype)initWithName:(NSString *)name AndSpecialization:(NSString *)specialization;

@end
