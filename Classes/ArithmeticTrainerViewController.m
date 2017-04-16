//
//  ArithmeticTrainerViewController.m
//  ArithmeticTrainer
//
//  Created by Mike Lee on 11/7/10.
//  Copyright 2010 Personal. All rights reserved.
//
#include <stdlib.h>
#import "ArithmeticTrainerViewController.h"
#import "FliteTTS.h"

@implementation ArithmeticTrainerViewController

@synthesize lblDisplay;

- (void) NewProblem {
	[answerDigits removeAllObjects];
	int lowerBound = 1;
	int upperBound = 11;
	int difference = upperBound - lowerBound;
	num1 = lowerBound + arc4random() % difference;
	num2 = lowerBound + rand() % difference;
	answer = num1 + num2;
    NSString* msg = [[NSString alloc] initWithFormat:@"%d + %d = %d", num1, num2, answer];
    [lblDisplay setText:msg];
	[self SayProblem];
    //[msg release];
}

- (void) InputDigit: (int) digit {
    NSString* spoken = [NSString stringWithFormat:@"%d ", digit];
	NSString* compute = [NSString stringWithFormat:@"%d", digit];
    [fliteEngine speakText:spoken];
	[answerDigits addObject:compute];

	NSMutableString* curAns = [NSMutableString stringWithString:@""];

	for (int i=0; i<[answerDigits count]; i++) {
		NSString* curd = [answerDigits objectAtIndex:i];
		[curAns appendString: curd];
	}

	int current = [curAns intValue];
	if (current == answer) {
        [NSThread sleepForTimeInterval:1.0f];
		[fliteEngine speakText:@"correct "];
        [NSThread sleepForTimeInterval:1.0f];
		[self NewProblem];
	}
	
	//NSLog(@"1");
	//NSLog(curAns);
	
	//[lblDisplay setText:curAns];
	
	//[d release];
	//[curAns release];
}

- (void) CheckAnswer {
    
}

- (void) SayProblem {
	NSString* spk = [[NSString alloc] initWithFormat:@"%d plus %d", num1, num2];
	[fliteEngine speakText:spk];
	//[spk release];
}

- (IBAction) Button1 {
    [self InputDigit:1];
}

- (IBAction) Button2 {
    [self InputDigit:2];
}

- (IBAction) Button3 {
    [self InputDigit:3];
}

- (IBAction) Button4 {
    [self InputDigit:4];
}

- (IBAction) Button5 {
    [self InputDigit:5];
}

- (IBAction) Button6 {
    [self InputDigit:6];
}

- (IBAction) Button7 {
    [self InputDigit:7];
}

- (IBAction) Button8 {
    [self InputDigit:8];
}

- (IBAction) Button9 {
    [self InputDigit:9];
}

- (IBAction) Button0 {
    [self InputDigit:0];
}

- (IBAction) ButtonDelete {
	if([answerDigits count] != 0) {
		[answerDigits removeLastObject];
	}
}

- (IBAction) ButtonSay {
	[self SayProblem];
}












/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


//*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    [self NewProblem];
    fliteEngine = [[FliteTTS alloc] init];
	answerDigits = [[NSMutableArray alloc] init];
}
//*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
