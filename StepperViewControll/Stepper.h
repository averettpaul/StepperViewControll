//
//  Stepper.h
//  StepperViewControll
//
//  Created by AVERETT BARKSDALE on 10/6/16.
//  Copyright © 2016 AVERETT BARKSDALE. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol StepperViewDelegate <NSObject>

-(void) StepperViewDelegateChanged:(int) value;


@end


@interface Stepper : UIView

{
    UILabel *buttonLabel;
    int currentValue;
}

@property (nonatomic, weak) id<StepperViewDelegate> delegate;

@end
