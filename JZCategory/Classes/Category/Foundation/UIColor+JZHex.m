//
//  UIColor+JZHex.m
//  JZCategoryDemo
//
//  Created by 周旭 on 2018/6/26.
//  Copyright © 2018年 周旭. All rights reserved.
//

#import "UIColor+JZHex.h"

@implementation UIColor (JZHex)

#define DEFAULT_VOID_COLOR [UIColor whiteColor]
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert AndAlpha:(CGFloat)alpha {
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([cString length] < 6)
        return DEFAULT_VOID_COLOR;
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return DEFAULT_VOID_COLOR;
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    UIColor *hexColor = [UIColor colorWithRed:((float) r / 255.0f)
                                        green:((float) g / 255.0f)
                                         blue:((float) b / 255.0f)
                                        alpha:alpha];
    
    return hexColor;
}

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert {
    return [UIColor colorWithHexString:stringToConvert AndAlpha:1.0f];
}

@end
