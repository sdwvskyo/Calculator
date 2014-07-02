//
//  CalculatorViewController.m
//  Calculator
//
//  Created by sdw on 14-7-2.
//  Copyright (c) 2014年 Sdw's App House. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *display;
@property (nonatomic) BOOL userIsInTheMiddleEnterAnNumber;
@end

@implementation CalculatorViewController

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




@end
