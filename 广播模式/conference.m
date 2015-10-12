//
//  conference.m
//  广播模式
//
//  Created by MBZL on 15/10/9.
//  Copyright (c) 2015年 高昭鹏. All rights reserved.
//

#import "conference.h"
NSString * const
conferenceWWDCNotifacation=@"WWDC";
NSString* const
conferenceProductUserInfoKey=@"Product";
NSString* const
conferenceTimeUserInfoKey=@"Time";
@implementation conference
-(void)start{
//创建发送者 发送一个广播
    NSNotificationCenter * noticationCenter=[NSNotificationCenter defaultCenter];
    //创建NSDictionary 保存广播内容
    NSDictionary * data=@{conferenceProductUserInfoKey:@"iPad Pro",conferenceTimeUserInfoKey:@"2:00"};
    //创建 NSNotification 广播中心
    NSNotification * notification=
    [NSNotification
     notificationWithName:conferenceWWDCNotifacation
     //主题 WWDC
                object:data];//发送的消息
    [noticationCenter postNotification:notification];


}
@end
