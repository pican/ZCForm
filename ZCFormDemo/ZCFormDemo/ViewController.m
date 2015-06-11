//
//  ViewController.m
//  ZCFormDemo
//
//  Created by pican on 15/6/5.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import "ViewController.h"
#import "ZCSalaryVC.h"
#import "ZCSharesVC.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)sharesBtnClick:(UIButton *)sender {
    ZCSharesVC* shares = [[ZCSharesVC alloc]init];
    [self.navigationController pushViewController:shares animated:YES];
}
- (IBAction)salaryBtnClick:(UIButton *)sender {
    ZCSalaryVC* salary = [[ZCSalaryVC alloc]init];
    [self.navigationController pushViewController:salary animated:YES];
}

- (void)viewDidLoad {
    self.title = @"首页";
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
            
            interfaceOrientation == UIInterfaceOrientationLandscapeRight );
}
@end
