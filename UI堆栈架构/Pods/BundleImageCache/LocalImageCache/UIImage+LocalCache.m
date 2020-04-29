//
//  UIImage+LocalCache.m
//  ImageCache
//
//  Created by yangxinlin on 17/6/7.
//  Copyright © 2017年 yangxinlin. All rights reserved.
//

#import "UIImage+LocalCache.h"

@implementation UIImage (LocalCache)

+ (UIImage *)getBundleImage:(NSString *)imageName isCache:(BOOL)cache
{
    if (![UIImage isValidImage:imageName]) {return nil;}
    if (cache) {return [UIImage getBundleImage:imageName];}
    return [UIImage imageWithContentsOfFile:IMAGE_PATH(imageName)];
}

+ (UIImage *)getBundleImage:(NSString *)imageName
{
    if (![UIImage isValidImage:imageName]) {return nil;}
    UIImage *image = [DR_LOCAL_IMAGECACHE_MANAGER.cache objectForKey:imageName];
    if (!image) {
        UIImage *imageCache =[UIImage imageWithContentsOfFile:IMAGE_PATH(imageName)];
        if (imageCache) {
            [DR_LOCAL_IMAGECACHE_MANAGER.cache setObject:imageCache forKey:imageName cost:1];
            return imageCache;
        }
        return nil;
    }
    return image;
}

+ (BOOL)isValidImage:(NSString *)imageName
{
    if (![imageName hasSuffix:@"jpg"] && ![imageName hasSuffix:@"png"] && ![imageName hasSuffix:@"gif"]) {return NO;}
    return YES;
    
    
}

@end
