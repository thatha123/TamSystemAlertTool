//
//  TamAlertTool.h
//  TamSystemAlertTool
//
//  Created by xin chen on 2017/8/7.
//  Copyright © 2017年 涂怀安. All rights reserved.
//  简化UIAlertController

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^ClickActionBlock)(NSInteger index);

@interface TamAlertTool : NSObject

/**
 *  系统提示框
 *
 *  @param title                主题
 *  @param message              信息
 *  @param alertControllerStyle 提示类型
 *  @param strArr               @[按钮文字]
 *  @param viewController       当前的控制器
 */
+(UIAlertController *)alertWithTitle:(NSString *)title message:(NSString *)message alertControllerStyle:(UIAlertControllerStyle)alertControllerStyle strArr:(NSArray *)strArr viewController:(UIViewController *)viewController clickAction:(ClickActionBlock)clickAction;

@end
