//
//  UIViewController+Extension.m
//  OBASum
//
//  Created by leeqb on 10/03/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "UIViewController+Extension.h"

@implementation UIViewController (Extension)

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [[UIApplication sharedApplication].keyWindow endEditing:YES];
}

@end
