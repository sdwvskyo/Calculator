//
//  CalculatorViewController.m
//  Calculator
//
//  Created by sdw on 14-7-2.
//  Copyright (c) 2014年 Sdw's App House. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorBrain.h"

@interface CalculatorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *display;
@property (nonatomic) BOOL userIsInTheMiddleEnterAnNumber;
@property (nonatomic,strong) CalculatorBrain *brain;
@end

@implementation CalculatorViewController

- (CalculatorBrain *)brain {
    if (!_brain) _brain = [[CalculatorBrain alloc]init];
    return _brain;
}

- (IBAction)digitPress:(UIButton *)sender {
    NSString *digit = [sender currentTitle];
    NSLog(@"User touched %@", digit);
    if (self.userIsInTheMiddleEnterAnNumber) {
        self.display.text = [self.display.text stringByAppendingString:digit];
    } else {
        self.display.text = digit;
        self.userIsInTheMiddleEnterAnNumber = YES;
    }
    
}

- (IBAction)operationPressed:(UIButton *)sender {
    if (self.userIsInTheMiddleEnterAnNumber) {
        self.userIsInTheMiddleEnterAnNumber = NO;
    }
    NSString *operation = [sender currentTitle];
    double result = [self.brain performOperation:operation];
    self.display.text = [NSString stringWithFormat:@"%g", result];
}

- (IBAction)enterPressed {
    [self.brain pushOperand:[self.display.text doubleValue]];
    self.userIsInTheMiddleEnterAnNumber = NO;
}



@end
