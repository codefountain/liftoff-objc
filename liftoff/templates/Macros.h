//
//  Macros.h
//  <%= project_name %>
//
//  Created by <%= author %> on <%= Time.now.strftime("%-m/%-d/%y") %>
//  Copyright (c) <%= Time.now.strftime('%Y') %> <%= company %>. All rights reserved.
//

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width

#define APPDELEGATE ((AppDelegate *)[[UIApplication sharedApplication] delegate])

#define IS_IPHONE_4INCH (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone && [UIScreen mainScreen].bounds.size.height == 568)
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_IPHONE_4 (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 480.0)
#define IS_IPHONE_5 (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 667.0)
#define IS_IPHONE_6PLUS (IS_IPHONE && [[UIScreen mainScreen] nativeScale] == 3.0f)
#define IS_IPHONE_6_PLUS (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 736.0)
#define IS_RETINA ([[UIScreen mainScreen] scale] == 2.0)
#define IS_RETINA_DISPLAY ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] && ([UIScreen mainScreen].scale == 2.0))
#define IS_PORTRAIT UIInterfaceOrientationIsPortrait([[UIApplication sharedApplication] statusBarOrientation])
#define IS_LANDSCAPE UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation])

#define SYSTEM_VERSION_LESS_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_GREATER_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)

#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)
#define RADIANS_TO_DEGREES(radians) ((radians) * (180.0 / M_PI))

#define RGB(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define RGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define MAKECOLOR(R, G, B, A) [UIColor colorWithRed:((float)R/255.0f) green:((float)G/255.0f) blue:((float)B/255.0f) alpha:A]
#define MAKECOLORFROMHEX(hexValue) [UIColor colorWithRed: ((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0]

#define SHOW_STATUS_BAR [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];
#define HIDE_STATUS_BAR [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];

#define SHOW_NAVIGATION_BAR [self.navigationController setNavigationBarHidden:FALSE];
#define HIDE_NAVIGATION_BAR [self.navigationController setNavigationBarHidden:TRUE];

#define RESIGN_KEYBOARD [[[UIApplication sharedApplication] keyWindow] endEditing:YES];

#define CLEAR_NOTIFICATION_BADGE [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
#define REGISTER_APPLICATION_FOR_NOTIFICATION_SERVICE  [[UIApplication sharedApplication] registerForRemoteNotificationTypes:(UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeSound | UIRemoteNotificationTypeAlert)]

#define HIDE_NETWORK_ACTIVITY_INDICATOR [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
#define SHOW_NETWORK_ACTIVITY_INDICATOR [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
