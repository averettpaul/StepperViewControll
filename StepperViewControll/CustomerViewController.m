//
//  CustomerViewController.m
//  StepperViewControll
//
//  Created by AVERETT BARKSDALE on 10/6/16.
//  Copyright © 2016 AVERETT BARKSDALE. All rights reserved.
//

#import "CustomerViewController.h"

@interface CustomerViewController ()

@end

@implementation CustomerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Stepper *stepper = [[Stepper alloc] initWithFrame:CGRectMake(100, 100,300,100)];
    stepper.backgroundColor = [UIColor blueColor];
    stepper.delegate = self;
    
    [self.view addSubview:stepper];
    
}

-(void) StepperViewDelegateChanged:(int)value {
    
    self.buttonLabel.text = [NSString stringWithFormat:@"%d",value];}





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

@end
