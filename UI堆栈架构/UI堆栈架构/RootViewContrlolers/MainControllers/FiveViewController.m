//
//  FiveViewController.m
//  UI堆栈架构
//
//  Created by yangxinlin on 2017/9/29.
//  Copyright © 2017年 XL. All rights reserved.
//

#import "FiveViewController.h"

@interface FiveViewController ()

@end

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageV = [[UIImageView alloc] init];
    imageV.frame = CGRectMake(100, 100, 22, 22);
    imageV.image = [UIImage getBundleImage:@"社保@2x.png" isCache:NO];
    [self.view addSubview:imageV];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setNavigationItemWithSubviewsAnimation:(BOOL)animation
{
    self.tabBarController.title = @"Five";
    self.tabBarController.navigationItem.rightBarButtonItem = nil;
    [self.navigationController setNavigationBarHidden:NO animated:animation];
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
