//
//  DrLocalImageCacheManager.h
//  ImageCache
//
//  Created by yangxinlin on 17/6/7.
//  Copyright © 2017年 yangxinlin. All rights reserved.
//

#import <Foundation/Foundation.h>

#define DR_LOCAL_IMAGECACHE_MANAGER   [DrLocalImageCacheManager shareManager]

@interface DrLocalImageCacheManager : NSObject

+ (DrLocalImageCacheManager *)shareManager;

@property (nonatomic, strong) NSCache *cache;

@end
