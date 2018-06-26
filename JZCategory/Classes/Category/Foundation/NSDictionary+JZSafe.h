//
//  NSDictionary+JZSafe.h
//  JZCategoryDemo
//
//  Created by 周旭 on 2018/6/26.
//  Copyright © 2018年 周旭. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JZSafe)

- (NSString *)stringForKey:(NSString *)key;
- (NSNumber *)numberForKey:(NSString *)key;
- (NSDictionary *)dictForKey:(NSString *)key;
- (NSArray *)arrayForKey:(NSString *)key;

- (NSInteger)integerForKey:(NSString *)key;
- (NSInteger)doubleForKey:(NSString*)key;
- (long long)longForKey:(NSString*)key;
- (int)intForKey:(NSString *)key;

@end
