//
//  <%= prefix %>AppDelegate.m
//  <%= project_name %>
//
//  Created by <%= author %> on <%= Time.now.strftime("%-m/%-d/%y") %>
//  Copyright (c) <%= Time.now.strftime('%Y') %> <%= company %>. All rights reserved.
//

#import "<%= prefix %>AppDelegate.h"
#import <Crashlytics/Crashlytics.h>

@interface <%= prefix %>AppDelegate ()

@end

@implementation <%= prefix %>AppDelegate

#pragma mark - Application delegate

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  
  // Setup CocoaLumberJack
  [DDLog addLogger:[DDASLLogger sharedInstance]];
  [DDLog addLogger:[DDTTYLogger sharedInstance]];
  [[DDTTYLogger sharedInstance] setColorsEnabled:YES];
  
  // Setup CocoaLumberJack colors
  UIColor *blue = [UIColor colorWithRed:0.31 green:0.435 blue:0.549 alpha:1];
  [[DDTTYLogger sharedInstance] setForegroundColor:blue backgroundColor:nil forFlag:0];
  
  UIViewController *viewController = [[UIViewController alloc] init];
  viewController.view.backgroundColor = [UIColor redColor];
  
  [self.window setRootViewController:viewController];
  
  [self.window makeKeyAndVisible];
  
  // Crashlytics Setup
  //NSString *crashlyticsApiKey = @"";
  //[Crashlytics startWithAPIKey:crashlyticsApiKey];
  
  return YES;
}

@end
