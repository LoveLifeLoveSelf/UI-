//
//  BaseViewController.h
//  UI堆栈架构
//
//  Created by 杨欣霖 on 2017/9/16.
//  Copyright © 2017年 XL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

- (void)setNavigationBarHide:(BOOL)hide withAanimated:(BOOL)animated;

- (void)setNavigationItemWithSubviews;

@end
