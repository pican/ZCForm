//
//  ZCListCell.m
//  ZCFormDemo
//
//  Created by pican on 15/6/8.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import "ZCListCell.h"

@implementation ZCListCell
+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"EWDetailCell";
    ZCListCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[ZCListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    return cell;
    
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.lWidth = 60;
        
    }
    return self;
}
- (void)setLabelTitleA:(NSArray *)labelTitleA{
    _labelTitleA = labelTitleA;
    for (int i=0; i<self.labelTitleA.count; i++) {
        NSString* labelText = self.labelTitleA[i];
        UILabel* timeLabel = [[UILabel alloc]initWithFrame:CGRectMake(15+i*self.lWidth,0, self.lWidth, self.frame.size.height)];
        timeLabel.font = [UIFont systemFontOfSize:12];
        timeLabel.text = labelText;
        timeLabel.textColor = [UIColor blackColor];
        timeLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:timeLabel];
    }
}
@end
