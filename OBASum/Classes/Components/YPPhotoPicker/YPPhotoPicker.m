//
//  YPPhotoPicker.m
//  OBASum
//
//  Created by leeqb on 27/02/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "YPPhotoPicker.h"
#import "YPPhotoPickerViewController.h"

@implementation YPPhotoPicker

+ (void)presentFromController:(UIViewController *)controller
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"YPPhotoPicker" bundle:nil];
    UINavigationController *nav = (UINavigationController *)[sb instantiateInitialViewController];
    [controller presentViewController:nav animated:YES completion:nil];
}

+ (void)pushFromController:(UIViewController *)controller
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"YPPhotoPicker" bundle:nil];
    YPPhotoPickerViewController *pickerController = [sb instantiateViewControllerWithIdentifier:@"YPPhotoPickerViewController"];
    [controller.navigationController pushViewController:pickerController animated:YES];
}

@end
