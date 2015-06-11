//
//  ZCSalaryVC.m
//  ZCFormDemo
//
//  Created by pican on 15/6/5.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import "ZCSalaryVC.h"
#import "ZCHeaderView.h"
#import "UIView+Extension.h"
#import "ZCListCell.h"

@interface ZCSalaryVC ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) ZCHeaderView *headView;
@property(nonatomic,weak)UITableView* tableview;
@property(nonatomic,strong)NSArray* detailArray;
@end

@implementation ZCSalaryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"薪资列表";
    [self initView];
}
- (void)initView{
    NSArray* array = @[@"姓名",@"部门",@"职位",@"基本工资",@"加班费",@"考勤扣款",@"项目奖金",@"餐饮补助",@"交通补助",@"个人税",@"养老保险",@"医疗保险",@"公积金",@"实发工资"];
    self.detailArray = @[@[@"张三",@"研发部",@"iOS",@"12000",@"2000",@"100",@"3000",@"300",@"200",@"2000",@"500",@"500",@"1000",@"13400",],@[@"张三",@"研发部",@"iOS",@"12000",@"2000",@"100",@"3000",@"300",@"200",@"2000",@"500",@"500",@"1000",@"13400",],@[@"张三",@"研发部",@"iOS",@"12000",@"2000",@"100",@"3000",@"300",@"200",@"2000",@"500",@"500",@"1000",@"13400",],@[@"张三",@"研发部",@"iOS",@"12000",@"2000",@"100",@"3000",@"300",@"200",@"2000",@"500",@"500",@"1000",@"13400",],@[@"张三",@"研发部",@"iOS",@"12000",@"2000",@"100",@"3000",@"300",@"200",@"2000",@"500",@"500",@"1000",@"13400",],@[@"张三",@"研发部",@"iOS",@"12000",@"2000",@"100",@"3000",@"300",@"200",@"2000",@"500",@"500",@"1000",@"13400",],@[@"张三",@"研发部",@"iOS",@"12000",@"2000",@"100",@"3000",@"300",@"200",@"2000",@"500",@"500",@"1000",@"13400",],@[@"张三",@"研发部",@"iOS",@"12000",@"2000",@"100",@"3000",@"300",@"200",@"2000",@"500",@"500",@"1000",@"13400",],@[@"张三",@"研发部",@"iOS",@"12000",@"2000",@"100",@"3000",@"300",@"200",@"2000",@"500",@"500",@"1000",@"13400",],@[@"张三",@"研发部",@"iOS",@"12000",@"2000",@"100",@"3000",@"300",@"200",@"2000",@"500",@"500",@"1000",@"13400",],];
    ZCHeaderView *tableViewHeadView=[[ZCHeaderView alloc]initWithFrame:CGRectMake(0, 0,15+60*14, 40)];
    tableViewHeadView.labelTitleA = array;
    [tableViewHeadView bottomLineforViewWithColor:[UIColor lightGrayColor]];
    self.headView=tableViewHeadView;
    
    UIScrollView *myScrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height)];
    UITableView *tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.headView.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    tableView.delegate=self;
    tableView.dataSource=self;
    tableView.bounces=NO;
    tableView.separatorStyle=UITableViewCellSeparatorStyleSingleLine;
    self.tableview=tableView;
    tableView.backgroundColor=[UIColor whiteColor];
    
    [myScrollView addSubview:tableView];
    myScrollView.bounces=NO;
    myScrollView.contentSize=CGSizeMake(self.headView.frame.size.width,0);
    myScrollView.scrollEnabled = YES;
    [self.view addSubview:myScrollView];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    ZCListCell* cell = [ZCListCell cellWithTableView:tableView];
    cell.labelTitleA = self.detailArray[indexPath.row];
    
    return cell;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    return self.headView;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return self.headView.frame.size.height;
}
- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}
- (BOOL)shouldAutorotate
{
    return YES;
}
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
   BOOL landscape = UIInterfaceOrientationIsLandscape(toInterfaceOrientation); //判断是不是横屏
       if(landscape){
           if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
               self.view.width = [UIScreen mainScreen].bounds.size.height;
               self.view.height= [UIScreen mainScreen].bounds.size.width;
               [self.view setNeedsDisplay];
           } else {
               self.view.width = [UIScreen mainScreen].bounds.size.height;
               self.view.height= [UIScreen mainScreen].bounds.size.width;
           }
       }

}
@end
