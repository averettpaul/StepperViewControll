//
//  Stepper.m
//  StepperViewControll
//
//  Created by AVERETT BARKSDALE on 10/6/16.
//  Copyright © 2016 AVERETT BARKSDALE. All rights reserved.
//

#import "Stepper.h"

@implementation Stepper

-(id) initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    
    currentValue = 6;
    
    //first small button
    UIButton *downButton = [UIButton buttonWithType:UIButtonTypeCustom];
    downButton.backgroundColor = [UIColor redColor];
    [downButton setTitle:@"-" forState:UIControlStateNormal];
    downButton.frame = CGRectMake(0, 0, 100, 100);
    
    [downButton addTarget:self action:@selector (downButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:downButton];
    
    //add target in order to fire
    
    //second small button
    UIButton *upButton = [UIButton buttonWithType:UIButtonTypeCustom];
    upButton.backgroundColor = [UIColor redColor];
    upButton.frame = CGRectMake(200,0,100,100);
    [upButton setTitle:@"+" forState: UIControlStateNormal];
    
    [upButton addTarget:self action:@selector(upButtonPressed:) forControlEvents: UIControlEventTouchUpInside];
    
    [self addSubview:upButton];
    //add target in order to fire
    
    //label
    buttonLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 25, 100, 50)];
    buttonLabel.text = [NSString stringWithFormat: @"%d",currentValue];
    buttonLabel.backgroundColor = [UIColor clearColor];
        buttonLabel.textAlignment = NSTextAlignmentCenter;
    buttonLabel.textColor = [UIColor blackColor];
    buttonLabel.text = @"6";
    [self addSubview:buttonLabel];
    
    return self;
}

-(void) downButtonPressed:(id) sender{
    
    currentValue -= 1;
    buttonLabel.text = [NSString stringWithFormat:@"%d",currentValue];
    [self.delegate StepperViewDelegateChanged:currentValue];
    
}

-(void) upButtonPressed: (id) sender {
    
    currentValue += 1;
    buttonLabel.text = [NSString stringWithFormat:@"%d", currentValue];
    [self.delegate StepperViewDelegateChanged:currentValue];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
