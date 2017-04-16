//
//  ArithmeticTrainerAppDelegate.h
//  ArithmeticTrainer
//
//  Created by Mike Lee on 11/7/10.
//  Copyright 2010 Personal. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ArithmeticTrainerViewController;

@interface ArithmeticTrainerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ArithmeticTrainerViewController *viewController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ArithmeticTrainerViewController *viewController;

@end

