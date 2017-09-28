//
//  FirstViewController.m
//  UI堆栈架构
//
//  Created by 杨欣霖 on 2017/9/16.
//  Copyright © 2017年 XL. All rights reserved.
//

#import "FirstViewController.h"
#import "UIImageView+WebCache.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
    UIImageView *imageV = [[UIImageView alloc] init];
    imageV.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGH - 64 - 49);
    //imageV.image = [UIImage getBundleImage:@"屏幕快照.png" isCache:NO];
    //[imageV sd_setImageWithURL:[NSURL URLWithString:@"http://pic.58pic.com/58pic/17/76/27/01u58PIC3ra_1024.jpg"] placeholderImage:[UIImage getBundleImage:@"屏幕快照.png" isCache:NO]];
    [imageV sd_setImageWithURL:[NSURL URLWithString:@"http://pic.58pic.com/58pic/17/76/27/01u58PIC3ra_1024.jpg"] placeholderImage:[UIImage getBundleImage:@"屏幕快照.png" isCache:NO] options:SDWebImageRetryFailed];
    [self.view addSubview:imageV];
}

- (void)setNavigationItemWithSubviewsAnimation:(BOOL)animation
{
    self.tabBarController.title = @"First";
    self.tabBarController.navigationItem.rightBarButtonItem = nil;
    [self.navigationController setNavigationBarHidden:NO animated:animation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    self.view = nil;
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
