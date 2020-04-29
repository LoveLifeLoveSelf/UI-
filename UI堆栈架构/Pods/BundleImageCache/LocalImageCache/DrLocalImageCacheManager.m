//
//  DrLocalImageCacheManager.m
//  ImageCache
//
//  Created by yangxinlin on 17/6/7.
//  Copyright © 2017年 yangxinlin. All rights reserved.
//

#import "DrLocalImageCacheManager.h"

@interface DrLocalImageCacheManager()<NSCacheDelegate>

@end

@implementation DrLocalImageCacheManager

+ (DrLocalImageCacheManager *)shareManager
{
    static DrLocalImageCacheManager *cacheManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{cacheManager = [[DrLocalImageCacheManager alloc] init];});
    return cacheManager;
}

- (NSCache *)cache
{
    if (!_cache) {
        _cache = [[NSCache alloc] init];
        _cache.delegate = self;
    }
    return _cache;
}

- (void)cache:(NSCache *)cache willEvictObject:(id)obj
{
    NSLog(@"-----%@",obj);
}

@end
