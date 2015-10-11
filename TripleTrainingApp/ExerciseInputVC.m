//
//  ExerciseInputVC.m
//  TripleTrainingApp
//
//  Created by Ken Ortego on 9/12/15.
//  Copyright (c) 2015 com.KiloOscar. All rights reserved.
//

#import "ExerciseInputVC.h"
#import "MOBExerciseDetails.h"
#import "DataProvider.h"
#import "TrainingDaysVC.h"

@interface ExerciseInputVC ()

@property (strong, nonatomic) IBOutlet UITextField *textFieldDistance;
@property (strong, nonatomic) IBOutlet UITextField *textFieldHours;
@property (strong, nonatomic) IBOutlet UITextField *textFieldMinutes;

@end

@implementation ExerciseInputVC


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)submitButtonTap:(UIButton *)sender {



    
    NSLog(@"Distance: %g, Time: %d:%02d", [self.textFieldDistance.text floatValue], [self.textFieldHours.text intValue], [self.textFieldMinutes.text intValue]);

    
    NSString *errorMessage = nil;
    
    float distance = [self.textFieldDistance.text floatValue];
    int hours = [self.textFieldHours.text intValue];
    int minutes = [self.textFieldMinutes.text intValue];
    
    if (self.textFieldDistance.text == nil || [self.textFieldDistance.text isEqualToString:@""]) {
        errorMessage = @"Please enter your distance.";
    }else if (distance <= 0){
        errorMessage = @"Distance is invalid.";
    }else if (distance > 50){
        errorMessage = @"Distance must be 50 miles or less.";
    }else if (hours < 0){
        errorMessage = @"Hours are invalid.";
    }else if (hours > 24){
        errorMessage = @"Hours must be 24 or less.";
    }else if (minutes < 0){
        errorMessage = @"Minutes are invalid.";
    }else if (minutes > 60){
        errorMessage = @"Minutes must be 60 or less.";
    }else if (hours == 0 && minutes == 0){
        errorMessage = @"Please enter your time.";
    }
    
    if (errorMessage) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Training App"
                                                       message:errorMessage
                                                      delegate:nil
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
        
        [alert show];
        
    }else {
        
        MOBExerciseDetails *dataInput = [[MOBExerciseDetails alloc]init];
        
        dataInput.miles = distance;
        dataInput.hours = hours;
        dataInput.minutes = minutes;
        
        [DataProvider setExerciseDetails:dataInput];
        
        [self.navigationController popViewControllerAnimated:YES];
        
    }
    
    
    

}


@end
