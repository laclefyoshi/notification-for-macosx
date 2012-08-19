//
//  NotificationManager.h
//  Notification
//
//  Created by 佐伯 嘉康 on 2012/08/19.
//  Copyright (c) 2012年 佐伯 嘉康. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NotificationManager : NSObject
@property (weak) IBOutlet NSTextField *titleField;
@property (weak) IBOutlet NSTextField *subtitleField;
@property (weak) IBOutlet NSTextField *bodyField;
@property (weak) IBOutlet NSTextField *delayField;
- (IBAction)send:(id)sender;
- (void) sendNotification: (NSString *) title
             withSubtitle: (NSString *) subtitle
                  andBody: (NSString *) body
                 andDelay: (NSInteger) delay;
@end
