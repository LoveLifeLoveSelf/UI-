//
//  NextViewController.m
//  UI堆栈架构
//
//  Created by 杨欣霖 on 2017/9/16.
//  Copyright © 2017年 XL. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"next";
    self.view.backgroundColor = [UIColor yellowColor];
    UIButton *next = [UIButton buttonWithType:UIButtonTypeCustom];
    next.frame = CGRectMake(0, 0, 100, 100);
    [next setTitle:@"next" forState:UIControlStateNormal];
    [next setBackgroundColor:[UIColor whiteColor]];
    [next setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [next addTarget:self action:@selector(nextAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:next];
}

- (void)setNavigationBarHide:(BOOL)hide withAanimated:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}
- (void)nextAction:(UIButton *)btn
{
//    [[NSNotificationCenter defaultCenter] postNotificationName:DEALLOC_SUBVIEWS object:self];
    [self.navigationController popViewControllerAnimated:YES];
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
