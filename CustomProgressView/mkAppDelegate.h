//
//  mkAppDelegate.h
//  CustomProgressView
//
//  Created by Mariya Kholod on 6/18/13.
//  Copyright (c) 2013 Mariya Kholod. All rights reserved.
//

#import <UIKit/UIKit.h>

@class mkViewController;

@interface mkAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) mkViewController *viewController;

@end
