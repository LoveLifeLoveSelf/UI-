//
//  FiveViewController.m
//  UI堆栈架构
//
//  Created by yangxinlin on 2017/10/12.
//  Copyright © 2017年 XL. All rights reserved.
//

#import "FiveViewController.h"

@interface FiveViewController ()

@end

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setNavigationItemWithSubviewsAnimation:(BOOL)animation
{
    self.tabBarController.title = @"FIve";
//    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(nextAction:)];
//    self.tabBarController.navigationItem.rightBarButtonItem = rightItem;
    self.tabBarController.navigationItem.rightBarButtonItem = nil;
    [self.navigationController setNavigationBarHidden:NO animated:animation];
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
