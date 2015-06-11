//
//  ZCListCell.h
//  ZCFormDemo
//
//  Created by pican on 15/6/8.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZCListCell : UITableViewCell
@property(nonatomic,strong)NSArray* labelTitleA;
@property(nonatomic,assign)CGFloat lWidth;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
