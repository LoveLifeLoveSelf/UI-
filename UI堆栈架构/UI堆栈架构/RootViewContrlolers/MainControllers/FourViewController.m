//
//  FourViewController.m
//  UI堆栈架构
//
//  Created by 杨欣霖 on 2017/9/16.
//  Copyright © 2017年 XL. All rights reserved.
//

#import "FourViewController.h"
#import "NextViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageV = [[UIImageView alloc] init];
    imageV.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGH - 64 - 49);
    imageV.image = [UIImage getBundleImage:@"屏幕快照.png" isCache:NO];
    [self.view addSubview:imageV];
}

- (void)setNavigationItemWithSubviewsAnimation:(BOOL)animation
{
    self.tabBarController.title = @"Four";
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(nextAction:)];
    self.tabBarController.navigationItem.rightBarButtonItem = rightItem;
    [self.navigationController setNavigationBarHidden:NO animated:animation];
}

- (void)nextAction:(id)sender
{
    NextViewController *nextVC = [[NextViewController alloc] init];
    [self.navigationController pushViewController:nextVC animated:YES];
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
