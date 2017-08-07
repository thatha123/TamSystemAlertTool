//
//  TamAlertTool.m
//  TamSystemAlertTool
//
//  Created by xin chen on 2017/8/7.
//  Copyright © 2017年 涂怀安. All rights reserved.
//

#import "TamAlertTool.h"

@implementation TamAlertTool

+(UIAlertController *)alertWithTitle:(NSString *)title message:(NSString *)message alertControllerStyle:(UIAlertControllerStyle)alertControllerStyle strArr:(NSArray *)strArr viewController:(UIViewController *)viewController clickAction:(ClickActionBlock)clickAction
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:alertControllerStyle];
    
    for (NSInteger i = 0;i < strArr.count;i++) {
        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:strArr[i] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            clickAction(i);
        }];
        [alertController addAction:alertAction];
    }
    
    //    NSMutableAttributedString *titleMutStr = [[NSMutableAttributedString alloc] initWithString:title];
    //    [titleMutStr addAttribute:NSFontAttributeName value:MYFont_NormalMax range:NSMakeRange(0, titleMutStr.length)];
    //    [alertController setValue:titleMutStr forKey:@"attributedTitle"];
    
    NSMutableAttributedString *messageMutStr = [[NSMutableAttributedString alloc] initWithString:message];
    
    [messageMutStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:15] range:NSMakeRange(0, messageMutStr.length)];
    
    [alertController setValue:messageMutStr forKey:@"attributedMessage"];
    
    [viewController presentViewController:alertController animated:YES completion:nil];
    
    return alertController;
}


@end
