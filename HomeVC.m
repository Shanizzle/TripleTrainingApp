//
//  HomeVC.m
//  TripleTrainingApp
//
//  Created by Ken Ortego on 9/2/15.
//  Copyright (c) 2015 com.KiloOscar. All rights reserved.
//

// added by 'KO on 10/11/15
// I am removing your update

#import "HomeVC.h"
#import "ExerciseInputVC.h"
#import "TrainingDaysVC.h"

@interface HomeVC ()

@end

@implementation HomeVC

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
- (IBAction)buttonTap:(id)sender {
    
    //ExerciseInputVC *inputVC = [[ExerciseInputVC alloc]init];
    //[self.navigationController pushViewController:inputVC animated:YES];
    
    TrainingDaysVC *trainingVC = [[TrainingDaysVC alloc]init];
    [self.navigationController pushViewController:trainingVC animated:YES];
    
    
}

@end
