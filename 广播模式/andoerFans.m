//
//  andoerFans.m
//  广播模式
//
//  Created by MBZL on 15/10/9.
//  Copyright (c) 2015年 高昭鹏. All rights reserved.
//

#import "andoerFans.h"
#import "conference.h"
@implementation andoerFans
- (instancetype)init
{
    self = [super init];
    if (self) {
        //
        NSNotificationCenter * notificationCenter=[NSNotificationCenter defaultCenter];
        [notificationCenter addObserver:self selector:@selector(receive:) name:conferenceWWDCNotifacation object:nil];
        
    }
    return self;
}
-(void)receive:(NSNotification*)notification{
    NSLog(@"这次的新品%@，再一次证明怎么不好啊",notification.userInfo[conferenceWWDCNotifacation]);
}
-(void)dealloc{
    NSLog(@"%s 放学被打死",__FUNCTION__);
    NSNotificationCenter *notificationCenter=[NSNotificationCenter defaultCenter];
    [notificationCenter removeObserver:self name:conferenceWWDCNotifacation object:nil];

}
@end
