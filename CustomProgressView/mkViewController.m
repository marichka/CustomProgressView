//
//  mkViewController.m
//  CustomProgressView
//
//  Created by Mariya Kholod on 6/18/13.
//  Copyright (c) 2013 Mariya Kholod. All rights reserved.
//

#import "mkViewController.h"

@interface mkViewController ()

@end

@implementation mkViewController

- (void)didFinishAnimation:(CustomProgressView*)progressView
{
    [progressView removeFromSuperview];
}

- (void)onProgressBtnPressed
{
    customProgressView = [[CustomProgressView alloc] init];
    customProgressView.delegate = self;
    [self.view addSubview:customProgressView];
    
    [self performSelector:@selector(setProgress:) withObject:[NSNumber numberWithFloat:0.3] afterDelay:0.0];
    [self performSelector:@selector(setProgress:) withObject:[NSNumber numberWithFloat:0.75] afterDelay:2.0];
    [self performSelector:@selector(setProgress:) withObject:[NSNumber numberWithFloat:1.0] afterDelay:4.0];
}

-(void)setProgress:(NSNumber*)value
{
    [customProgressView performSelectorOnMainThread:@selector(setProgress:) withObject:value waitUntilDone:NO];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *ProgressBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    ProgressBtn.frame = CGRectMake((int)((self.view.frame.size.width-200.0)/2.0), 120.0, 200.0, 50.0);
    [ProgressBtn setTitle:@"Show Progress View" forState:UIControlStateNormal];
    [ProgressBtn addTarget:self action:@selector(onProgressBtnPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:ProgressBtn];
    ProgressBtn.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
