//
//  SecondViewController.m
//  UI堆栈架构
//
//  Created by 杨欣霖 on 2017/9/16.
//  Copyright © 2017年 XL. All rights reserved.
//

#import "SecondViewController.h"
#import "Next1ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    [self.navigationController setNavigationBarHidden:YES];//值得注意viewdidLaod方法会对self.view及其superView进行布局。（比如设置frame）儿loadView方法而是对nib文件进行加载以及self.view（包含其suerview）的初始化
    UIButton *next = [UIButton buttonWithType:UIButtonTypeCustom];
    next.frame = CGRectMake(0, 0, 100, 100);
    [next setTitle:@"next" forState:UIControlStateNormal];
    [next setBackgroundColor:[UIColor whiteColor]];
    [next setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [next addTarget:self action:@selector(nextAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:next];
}

- (void)nextAction:(UIButton *)btn
{
    Next1ViewController *next1 = [[Next1ViewController alloc] init];
    [self.navigationController pushViewController:next1 animated:YES];
}

- (void)setNavigationItemWithSubviews
{
    self.tabBarController.title = @"Second";
    self.tabBarController.navigationItem.rightBarButtonItem = nil;
}

- (void)setNavigationBarHide:(BOOL)hide withAanimated:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
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
