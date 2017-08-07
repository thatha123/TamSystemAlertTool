//
//  ViewController.m
//  TamSystemAlertTool
//
//  Created by xin chen on 2017/8/7.
//  Copyright © 2017年 涂怀安. All rights reserved.
//

#import "ViewController.h"
#import "TamAlertTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)alertAction:(id)sender {
    [TamAlertTool alertWithTitle:@"提示" message:@"点击关注不迷路" alertControllerStyle:UIAlertControllerStyleAlert strArr:@[@"取消",@"确定"] viewController:self clickAction:^(NSInteger index) {
        NSLog(@"%ld",index);
    }];
}

- (IBAction)actionAction:(id)sender {
    [TamAlertTool alertWithTitle:@"提示" message:@"点击关注不迷路" alertControllerStyle:UIAlertControllerStyleActionSheet strArr:@[@"取消",@"修改",@"删除",@"添加"] viewController:self clickAction:^(NSInteger index) {
        NSLog(@"%ld",index);
    }];
}

@end
