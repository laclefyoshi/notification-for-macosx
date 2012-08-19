//
//  AppDelegate.m
//  Notification
//
//  Created by 佐伯 嘉康 on 2012/08/19.
//  Copyright (c) 2012年 佐伯 嘉康. All rights reserved.
//

#import "AppDelegate.h"
#import "NotificationManager.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    NSUserDefaults *args = [NSUserDefaults standardUserDefaults];
    NSString *title = [args stringForKey:@"title"];
    if(![title isEqualToString:@""]) {
        NotificationManager* notification = [[NotificationManager alloc] init];
        NSString *subtitle = [args stringForKey:@"subtitle"];
        NSString *body = [args stringForKey:@"body"];
        NSInteger delay = [args integerForKey:@"delay"];
        [notification sendNotification:title
                          withSubtitle:subtitle
                               andBody:body
                              andDelay:delay];
    }
}

@end
