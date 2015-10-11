//
//  TrainingDaysVC.m
//  TripleTrainingApp
//
//  Created by Ken Ortego on 10/10/15.
//  Copyright (c) 2015 com.KiloOscar. All rights reserved.
//

#import "TrainingDaysVC.h"
#import "ExerciseInputVC.h"
#import "MOBExerciseDetails.h"
#import "DataProvider.h"

@interface TrainingDaysVC () <UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *mainTable;

@property (strong, nonatomic) IBOutlet UIButton *Button;


@end

@implementation TrainingDaysVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mainTable.tableHeaderView = [[UIView alloc]initWithFrame:CGRectZero];
    self.mainTable.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}

//- (NSInteger)tableview:(UITableView *)tableview numberOfRowsInSection:(NSInteger)section{
//    return 7;
//    
//}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"dayOfWeekID";
    
    UITableViewCell *myCell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (myCell == nil) {
        myCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    if (indexPath.row == 0) {
        myCell.textLabel.text = @"Sunday";
    }else if (indexPath.row == 1) {
        myCell.textLabel.text = @"Monday";
    }else if (indexPath.row == 2){
        myCell.textLabel.text = @"Tuesday";
    }else if (indexPath.row == 3){
        myCell.textLabel.text = @"Wednesday";
    }else if (indexPath.row == 4){
        myCell.textLabel.text = @"Thursday";
    }else if (indexPath.row == 5){
        myCell.textLabel.text = @"Fiday";
    }else if (indexPath.row == 6){
        myCell.textLabel.text = @"Saturday";
    }
    
    return myCell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ExerciseInputVC *inputVC = [[ExerciseInputVC alloc] init];
    [self.navigationController pushViewController:inputVC animated:YES];
    
    
}





@end
