//
//  UIView+lineView.h
//  CircleLove
//
//  Created by 张灿 on 14-9-22.
//  Copyright (c) 2014年 xiaomiaos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)
//获取UIView的frame
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (assign, nonatomic) CGPoint origin;
//给UIView画灰色的线
- (void)leftLineforViewWithColor:(UIColor*)color;
- (void)bottomLineforViewWithColor:(UIColor*)color;


//画K线图框框的1/4,1/2,3/4线，实线和虚线 dotted为YES代表是虚线
- (void)verticalLinepaddingLeft:(CGFloat)left dotted:(BOOL)dotted ;
- (void)horizontalLinepaddingtop:(CGFloat)top dotted:(BOOL)dotted ;
@end

