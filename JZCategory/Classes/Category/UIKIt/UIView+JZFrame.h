//
//  UIView+ZXFrame.h
//  ZXCategory_Example
//
//  Created by 周旭 on 2018/6/20.
//  Copyright © 2018年 JoeanZhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JZFrame)

@property (assign, nonatomic) CGFloat top;
@property (assign, nonatomic) CGFloat bottom;
@property (assign, nonatomic) CGFloat left;
@property (assign, nonatomic) CGFloat right;

@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat height;

@property (assign, nonatomic) CGSize size;

@property (assign, nonatomic) CGFloat centerX;
@property (assign, nonatomic) CGFloat centerY;

@property (assign, nonatomic) CGPoint center;


@end
