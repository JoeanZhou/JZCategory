//
//  NSDictionary+JZSafe.m
//  JZCategoryDemo
//
//  Created by 周旭 on 2018/6/26.
//  Copyright © 2018年 周旭. All rights reserved.
//

#import "NSDictionary+JZSafe.h"

@implementation NSDictionary (JZSafe)

- (NSString *)stringForKey:(NSString *)key{
    if (key.length > 0) {
        NSString* obj = [self objectForKey:key];
        if ([obj isKindOfClass:[NSString class]]) {
            return obj;
        }
    }
    return nil;
}

- (NSNumber *)numberForKey:(NSString *)key{
    if (key.length > 0) {
        NSNumber *obj = [self objectForKey:key];
        if ([obj isKindOfClass:[NSNumber class]]) {
            return obj;
        }
    }
    return nil;
}

- (NSDictionary *)dictForKey:(NSString *)key{
    if (key.length > 0) {
        NSDictionary *obj = [self objectForKey:key];
        if ([obj isKindOfClass:[NSDictionary class]]) {
            return obj;
        }
    }
    return nil;
}

- (NSArray *)arrayForKey:(NSString *)key{
    if (key.length > 0) {
        NSArray *obj = [self objectForKey:key];
        if ([obj isKindOfClass:[NSArray class]]) {
            return obj;
        }
    }
    return nil;
}

- (NSInteger)integerForKey:(NSString *)key{
    NSNumber *value = [self numberForKey:key];
    if (value == nil) {
        NSString *str = [self stringForKey:key];
        return str.integerValue;
    }
    return value.integerValue;
}


- (NSInteger)doubleForKey:(NSString*)key{
    NSNumber *val = [self numberForKey:key];
    if (val == nil) {
        NSString *str = [self stringForKey:key];
        return str.doubleValue;
    }
    
    return val.doubleValue;
}

- (long long)longForKey:(NSString*)key{
    NSNumber *val = [self numberForKey:key];
    if (val == nil) {
        NSString *str = [self stringForKey:key];
        return str.longLongValue;
    }
    
    return val.longLongValue;
}

- (int)intForKey:(NSString *)key{
    NSNumber *val = [self numberForKey:key];
    if (val == nil) {
        NSString *str = [self stringForKey:key];
        return str.intValue;
    }
    return val.intValue;
}

@end
