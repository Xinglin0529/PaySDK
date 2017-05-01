//
//  OSSSecurity.h
//  OSSSecurity
//
//  Created by xudongdong on 2017/4/24.
//  Copyright © 2017年 xudongdong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OSSSecurity : NSObject

+ (NSString *)accessKey;

+ (NSString *)secretKey;

+ (NSString *)endPoint;

+ (NSString *)bucketName;

@end
