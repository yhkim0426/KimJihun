//
//  AppDelegate.m
//  [1024]ViewChange
//
//  Created by celeste on 2016. 10. 24..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "ViewController2.h"
#import "ViewControllerWithXIB.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSLog(@"willFinishLaunchingWithOptions");
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    // Main 스토리 보드 연결하기
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];

    
     // StoryBoard2 로 view 설정하기
    UINavigationController *vc =   [storyBoard instantiateInitialViewController];
//    ViewController2 *vc2 =   [storyBoard instantiateViewControllerWithIdentifier:@"ViewController2"];

    
     // xib 로 view 설정하기
//    ViewControllerWithXIB *vcWithX = [[ViewControllerWithXIB alloc] init];
//    ViewControllerWithXIB *vcWithX = [[ViewControllerWithXIB alloc] initWithNibName:@"ViewControllerWithXIB" bundle:nil];
//    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vcWithX];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    NSLog(@"didFinishLaunchingWithOptions");
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    NSLog(@"applicationWillResignActive");
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    NSLog(@"applicationDidEnterBackground");
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    NSLog(@"applicationWillEnterForeground");
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    NSLog(@"applicationDidBecomeActive");
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"applicationWillTerminate");
}


@end
