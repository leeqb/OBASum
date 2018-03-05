//
//  YPPhotoPickerTestViewController.m
//  OBASum
//
//  Created by leeqb on 28/02/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "YPPhotoPickerTestViewController.h"
#import "YPPhotoPicker.h"

@interface YPPhotoPickerTestViewController ()

@end

@implementation YPPhotoPickerTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)photoPickAction:(UIButton *)sender {
    //[YPPhotoPicker presentFromController:self];
    [YPPhotoPicker pushFromController:self];
}

@end
