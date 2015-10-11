//
//  DataProvider.m
//  TripleTrainingApp
//
//  Created by Ken Ortego on 9/13/15.
//  Copyright (c) 2015 com.KiloOscar. All rights reserved.
//

#import "DataProvider.h"

static MOBExerciseDetails *exerciseDetails;

@implementation DataProvider

+ (void) setExerciseDetails:(MOBExerciseDetails *)data {
    
    exerciseDetails = data;
}

+ (MOBExerciseDetails *)getExerciseDetails {
    
    return exerciseDetails;
}

@end
