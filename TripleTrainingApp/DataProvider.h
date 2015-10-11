//
//  DataProvider.h
//  TripleTrainingApp
//
//  Created by Ken Ortego on 9/13/15.
//  Copyright (c) 2015 com.KiloOscar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MOBExerciseDetails.h"

@interface DataProvider : NSObject

+ (void) setExerciseDetails:(MOBExerciseDetails *)data;
+ (MOBExerciseDetails *)getExerciseDetails;

@end
