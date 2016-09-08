//
//  Patient.h
//  DoctorPatient
//
//  Created by Dan Christal on 2016-09-08.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property NSString *name;
@property NSNumber *age;

-(instancetype)initWithName:(NSString *)name AndAge:(NSNumber *)age;

@end
