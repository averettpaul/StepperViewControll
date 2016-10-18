//
//  CustomerViewController.h
//  StepperViewControll
//
//  Created by AVERETT BARKSDALE on 10/6/16.
//  Copyright © 2016 AVERETT BARKSDALE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stepper.h"


@interface CustomerViewController : UIViewController <StepperViewDelegate>

@property (nonatomic, weak) IBOutlet UILabel *buttonLabel;

@end
