//
//  BaseViewController.m
//  UI堆栈架构
//
//  Created by 杨欣霖 on 2017/9/16.
//  Copyright © 2017年 XL. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNavigationItemWithSubviews];
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout = UIRectEdgeLeft | UIRectEdgeRight;
//    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)setNavigationItemWithSubviews
{
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self setNavigationBarHide:NO withAanimated:animated];
}

- (void)setNavigationBarHide:(BOOL)hide withAanimated:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:hide animated:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
