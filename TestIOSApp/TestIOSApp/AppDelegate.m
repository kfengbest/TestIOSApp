//
//  AppDelegate.m
//  TestIOSApp
//
//  Created by Kaven Feng on 5/10/13.
//  Copyright (c) 2013 Kaven Feng. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController2.h"
#import "ViewController1.h"
#import "ViewController3.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
//    ViewController2* vc = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
//    vc.view.backgroundColor = [UIColor redColor];
//    self.window.rootViewController = vc;
    
    
//    ViewController1* vc = [[ViewController1 alloc] init];
//    vc.view.backgroundColor = [UIColor blueColor];
//    UINavigationController* nc = [[UINavigationController alloc] initWithRootViewController:vc];
//    self.window.rootViewController = nc;
    
    ViewController3* vc = [[ViewController3 alloc] initWithNibName:@"ViewController3" bundle:nil];
    self.window.rootViewController = vc;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
