//
//  NotificationManager.m
//  Notification
//
//  Created by 佐伯 嘉康 on 2012/08/19.
//  Copyright (c) 2012年 佐伯 嘉康. All rights reserved.
//

#import "NotificationManager.h"

@implementation NotificationManager
@synthesize delayField;
@synthesize titleField;
@synthesize subtitleField;
@synthesize bodyField;

- (IBAction)send:(id)sender {
    [self sendNotification:[titleField stringValue]
              withSubtitle:[subtitleField stringValue]
                   andBody:[bodyField stringValue]
                  andDelay:[delayField intValue]];
}

- (void) sendNotification: (NSString *) title
             withSubtitle: (NSString *) subtitle
                  andBody: (NSString *) body
                 andDelay: (NSInteger) delay {
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    [notification setTitle:title];
    [notification setSubtitle:subtitle];
    [notification setInformativeText:body];
    [notification setDeliveryDate:[NSDate dateWithTimeInterval:delay
                                                     sinceDate:[NSDate date]]];
    [notification setSoundName:NSUserNotificationDefaultSoundName];
    NSUserNotificationCenter *center =
        [NSUserNotificationCenter defaultUserNotificationCenter];
    [center scheduleNotification:notification];
}

@end
