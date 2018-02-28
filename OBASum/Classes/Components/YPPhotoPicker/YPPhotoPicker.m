//
//  YPPhotoPicker.m
//  OBASum
//
//  Created by leeqb on 27/02/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "YPPhotoPicker.h"

@implementation YPPhotoPicker

+ (void)showInController:(UIViewController *)controller
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"YPPhotoPicker" bundle:nil];
    UINavigationController *nav = (UINavigationController *)[sb instantiateInitialViewController];
    [controller presentViewController:nav animated:YES completion:nil];
}

@end
