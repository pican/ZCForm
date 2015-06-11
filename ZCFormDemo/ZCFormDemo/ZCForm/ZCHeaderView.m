//
//  ZCHeaderView.m
//  ZCFormDemo
//
//  Created by pican on 15/6/8.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import "ZCHeaderView.h"
#import "UIView+Extension.h"

@implementation ZCHeaderView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.lWidth = 60;
    }
    return self;
}
- (void)setLabelTitleA:(NSMutableArray *)labelTitleA{
    _labelTitleA = labelTitleA;
    for (int i=0; i<self.labelTitleA.count; i++) {
        NSString* labelText = self.labelTitleA[i];
        UILabel* timeLabel = [[UILabel alloc]initWithFrame:CGRectMake(15+i*self.lWidth,0, self.lWidth, self.frame.size.height)];
        timeLabel.font = [UIFont systemFontOfSize:12];
        timeLabel.text = labelText;
        timeLabel.textColor = [UIColor blackColor];
        timeLabel.textAlignment = NSTextAlignmentCenter;
        [timeLabel leftLineforViewWithColor:[UIColor grayColor]];
        [self addSubview:timeLabel];
    }
}

@end
