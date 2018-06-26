//
//  UIColor+JZHex.h
//  JZCategoryDemo
//
//  Created by 周旭 on 2018/6/26.
//  Copyright © 2018年 周旭. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (JZHex)
/**
 根据色值设定颜色
 
 @param stringToConvert 色值字符串
 @return 色值对应的UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert AndAlpha:(CGFloat)alpha;

@end
