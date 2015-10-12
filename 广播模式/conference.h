//
//  conference.h
//  广播模式
//
//  Created by MBZL on 15/10/9.
//  Copyright (c) 2015年 高昭鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface conference : NSObject
extern NSString * const
conferenceWWDCNotifacation;
extern NSString* const
conferenceProductUserInfoKey;
extern NSString* const
conferenceTimeUserInfoKey;
-(void)start;
@end
