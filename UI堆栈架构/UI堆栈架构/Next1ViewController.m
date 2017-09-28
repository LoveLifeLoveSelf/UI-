//
//  Next1ViewController.m
//  UI堆栈架构
//
//  Created by 杨欣霖 on 2017/9/17.
//  Copyright © 2017年 XL. All rights reserved.
//

#import "Next1ViewController.h"
#import "SecondViewController.h"

@interface Next1ViewController ()

@end

@implementation Next1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageV = [[UIImageView alloc] init];
    imageV.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGH - 64 - 49);
    imageV.image = [UIImage getBundleImage:@"屏幕快照.png" isCache:NO];
    [self.view addSubview:imageV];

    UIButton *next = [UIButton buttonWithType:UIButtonTypeCustom];
    next.frame = CGRectMake(0, 0, 100, 100);
    [next setTitle:@"next" forState:UIControlStateNormal];
    [next setBackgroundColor:[UIColor whiteColor]];
    [next setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [next addTarget:self action:@selector(clearAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:next];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(nextAction:)];
    self.navigationItem.rightBarButtonItem = rightItem;
}

- (void)nextAction:(id)sender
{
    Next1ViewController *next1 = [[Next1ViewController alloc] init];
    [self.navigationController pushViewController:next1 animated:YES];
}

- (void)clearAction:(UIButton *)btn
{
    [[NSNotificationCenter defaultCenter] postNotificationName:DEALLOC_SUBVIEWS object:self];
//    [self.navigationController popViewControllerAnimated:YES];
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
