//
//  UIImage+LocalCache.h
//  ImageCache
//
//  Created by yangxinlin on 17/6/7.
//  Copyright © 2017年 yangxinlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrLocalImageCacheManager.h"
#import <ImageIO/ImageIO.h>

#define IMAGE_PATH(x) [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:(x)]

@interface UIImage (LocalCache)

/**
 *  初始化Banner view
 *
 *  @param imageName 图片名称 （注：使用时必须带后缀）
 *  @param cache  是否需要缓存
 */

+ (UIImage *)getBundleImage:(NSString *)imageName isCache:(BOOL)cache;

@end
