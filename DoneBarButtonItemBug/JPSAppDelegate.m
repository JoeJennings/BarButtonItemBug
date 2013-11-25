//
//  JPSAppDelegate.m
//  DoneBarButtonItemBug
//
//  Created by JP Simard on 11/25/2013.
//  Copyright (c) 2013 JP Simard. All rights reserved.
//

#import "JPSAppDelegate.h"
#import "JPSViewController.h"

@implementation JPSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[JPSViewController alloc] init]];
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
