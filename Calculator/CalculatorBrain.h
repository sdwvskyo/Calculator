//
//  CalculatorBrain.h
//  Calculator
//
//  Created by sdw on 14-7-3.
//  Copyright (c) 2014年 Sdw's App House. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void)pushOperand:(double)operand;

- (double)performOperation:(NSString *)operation;
@end
