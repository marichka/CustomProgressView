//
//  CustomProgressView.h
//  CustomProgressView
//
//  Created by Mariya Kholod on 6/18/13.
//  Copyright (c) 2013 Mariya Kholod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface CustomProgressView : UIView
{
    float current_value;
    float new_to_value;
    
    UILabel *ProgressLbl;

    id delegate;
    
    BOOL IsAnimationInProgress;
}

@property id delegate;
@property float current_value;

- (id)init;
- (void)setProgress:(NSNumber*)value;

@end

@protocol CustomProgressViewDelegate
- (void)didFinishAnimation:(CustomProgressView*)progressView;
@end
