//
//  ArithmeticTrainerViewController.h
//  ArithmeticTrainer
//
//  Created by Mike Lee on 11/7/10.
//  Copyright 2010 Personal. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FliteTTS;

@interface ArithmeticTrainerViewController : UIViewController {
    FliteTTS *fliteEngine;
    IBOutlet UILabel * lblDisplay;
    int num1;
    int num2;
    int answer;
	NSMutableArray* answerDigits;
	
}

@property (nonatomic, retain) IBOutlet UILabel * lblDisplay;

- (void) NewProblem;
- (void) InputDigit:(int)digit;
- (void) CheckAnswer;
- (void) SayProblem;

- (IBAction) Button1;
- (IBAction) Button2;
- (IBAction) Button3;
- (IBAction) Button4;
- (IBAction) Button5;
- (IBAction) Button6;
- (IBAction) Button7;
- (IBAction) Button8;
- (IBAction) Button9;
- (IBAction) Button0;
- (IBAction) ButtonDelete;
- (IBAction) ButtonSay;

@end

