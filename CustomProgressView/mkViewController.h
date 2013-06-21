//
//  mkViewController.h
//  CustomProgressView
//
//  Created by Mariya Kholod on 6/18/13.
//  Copyright (c) 2013 Mariya Kholod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomProgressView.h"
@interface mkViewController : UIViewController <CustomProgressViewDelegate>
{
    CustomProgressView *customProgressView;
}
@end
