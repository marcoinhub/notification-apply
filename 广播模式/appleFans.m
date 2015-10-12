//
//  appleFans.m
//  广播模式
//
//  Created by MBZL on 15/10/9.
//  Copyright (c) 2015年 高昭鹏. All rights reserved.
//

#import "appleFans.h"
#import "conference.h"
@implementation appleFans
- (instancetype)init
{
    self = [super init];
    if (self) {
        //收听者 打开收音机，收听广播，调频到和将来发送者一样的频道（101.7）
        //创建通知中心，准备接受广播用的
        NSNotificationCenter * notificationCenter=[NSNotificationCenter defaultCenter];
        [notificationCenter addObserver:self//收听者
                               selector:@selector(receive:)//接到通知后调用的方法
                                   name:conferenceWWDCNotifacation object:nil];}
    return self;
}
//接收到广播后执行的方法
-(void)receive:(NSNotification*)notification{
 //创建一个NSDictionary 负责接收从广播来的消息
    NSDictionary * data=notification.userInfo;
    NSLog(@"%@:又发新品了，我明天%@要排队去买",self.name,data[conferenceTimeUserInfoKey]);
}
-(void)dealloc{
//关闭广播
    NSNotificationCenter * notificationCenter=[NSNotificationCenter defaultCenter];
    [notificationCenter removeObserver:self//关闭者
                                  name:conferenceWWDCNotifacation object:nil];
}
@end
