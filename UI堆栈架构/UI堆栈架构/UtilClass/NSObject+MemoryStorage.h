//
//  NSObject+MemoryStorage.h
//  UI堆栈架构
//
//  Created by yangxinlin on 2017/9/28.
//  Copyright © 2017年 XL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MemoryStorage)

// 获取当前设备可用内存(单位：MB）
+ (double)availableMemory;

// 获取当前任务所占用的内存（单位：MB）
+ (double)usedMemory;

//是否达到内存使用上限
+ (BOOL)isReachUpperlimit;

@end
