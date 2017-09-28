//
//  NSObject+MemoryStorage.m
//  UI堆栈架构
//
//  Created by yangxinlin on 2017/9/28.
//  Copyright © 2017年 XL. All rights reserved.
//

#import "NSObject+MemoryStorage.h"
#import <sys/sysctl.h>
#import <mach/mach.h>

#define Upperlimit  100

@implementation NSObject (MemoryStorage)

// 获取当前设备可用内存(单位：MB）
+ (double)availableMemory
{
    vm_statistics_data_t vmStats;
    mach_msg_type_number_t infoCount = HOST_VM_INFO_COUNT;
    kern_return_t kernReturn = host_statistics(mach_host_self(),
                                               HOST_VM_INFO,
                                               (host_info_t)&vmStats,
                                               &infoCount);
    if (kernReturn != KERN_SUCCESS) {
        return NSNotFound;
    }
    return ((vm_page_size *vmStats.free_count) / 1024.0) / 1024.0;
}

// 获取当前任务所占用的内存（单位：MB）
+ (double)usedMemory
{
    task_basic_info_data_t taskInfo;
    mach_msg_type_number_t infoCount = TASK_BASIC_INFO_COUNT;
    kern_return_t kernReturn = task_info(mach_task_self(),
                                         TASK_BASIC_INFO,
                                         (task_info_t)&taskInfo,
                                         &infoCount);
    if (kernReturn != KERN_SUCCESS) {return NSNotFound;}
    return taskInfo.resident_size / 1024.0 / 1024.0;
}

+ (BOOL)isReachUpperlimit
{
    return  [NSObject usedMemory] >= Upperlimit;
}

@end
