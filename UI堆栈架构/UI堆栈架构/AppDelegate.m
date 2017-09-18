//
//  AppDelegate.m
//  UI堆栈架构
//
//  Created by 杨欣霖 on 2017/9/16.
//  Copyright © 2017年 XL. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"

@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] init];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.view.backgroundColor = [UIColor redColor];
    tabBarController.tabBar.translucent = NO;
    tabBarController.delegate = self;
    
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"F" image:[UIImage imageNamed:@"社保相片"] selectedImage:[UIImage imageNamed:@"社保相片"]];
    firstVC.tabBarItem = item;
    
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    item = [[UITabBarItem alloc] initWithTitle:@"S" image:[UIImage imageNamed:@"社保相片"] selectedImage:[UIImage imageNamed:@"社保相片"]];
    secondVC.tabBarItem = item;
    
    ThreeViewController *threeVC = [[ThreeViewController alloc] init];
    item = [[UITabBarItem alloc] initWithTitle:@"T" image:[UIImage imageNamed:@"社保相片"] selectedImage:[UIImage imageNamed:@"社保相片"]];
    threeVC.tabBarItem = item;
    
    FourViewController *fourVC = [[FourViewController alloc] init];
    item = [[UITabBarItem alloc] initWithTitle:@"Fr" image:[UIImage imageNamed:@"社保相片"] selectedImage:[UIImage imageNamed:@"社保相片"]];
    fourVC.tabBarItem = item;
    
    [tabBarController setViewControllers:@[firstVC,secondVC,threeVC,fourVC] animated:YES];
    
    [tabBarController setSelectedIndex:1];
    
    self.mainNavigation = [[GlobleNavigationController alloc] initWithRootViewController:tabBarController];
    self.window.rootViewController = self.mainNavigation;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    for (UIViewController *vc in tabBarController.viewControllers) {
        if (vc != viewController) {
            [vc didReceiveMemoryWarning];
        }
    }
}
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    if (viewController == tabBarController.selectedViewController) {return NO;}
    BaseViewController *vc = (BaseViewController *)viewController;
    [vc setNavigationItemWithSubviews];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
