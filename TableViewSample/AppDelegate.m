//
//  AppDelegate.m
//  TableViewSample
//
//  Created by 최성원 on 2015. 9. 18..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "TableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [window setBackgroundColor:[UIColor whiteColor]];
    [window makeKeyAndVisible];
    [self setWindow:window];
    
    TableViewController *viewController = [[TableViewController alloc] init];
    
    [[self window] setRootViewController:viewController];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {

}

- (void)applicationDidEnterBackground:(UIApplication *)application {

}

- (void)applicationWillEnterForeground:(UIApplication *)application {

}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {

}

@end
