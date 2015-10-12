//
//  main.m
//  广播模式
//
//  Created by MBZL on 15/10/9.
//  Copyright (c) 2015年 高昭鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "conference.h"
#import "appleFans.h"
#import "andoerFans.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        appleFans* fans=[[appleFans alloc]init];
        fans.name=@"微软";
        conference * con=[[conference alloc]init];
        andoerFans* aFans=[[andoerFans alloc]init];
        aFans.name=@"sasum";
        [con start];
                // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
