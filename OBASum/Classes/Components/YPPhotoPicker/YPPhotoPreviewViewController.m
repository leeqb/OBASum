//
//  YPPhotoPreviewViewController.m
//  OBASum
//
//  Created by leeqb on 06/03/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "YPPhotoPreviewViewController.h"
#import "YPPhotoPickerViewController.h"

#define SCREEN_WIDTH    ([[UIScreen mainScreen] bounds].size.width) // 屏幕宽度
#define SCREEN_HEIGHT   ([[UIScreen mainScreen] bounds].size.height)    // 屏幕高度

@interface YPPhotoPreviewViewController()
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeight;

@end

@implementation YPPhotoPreviewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self refreshImage];
}

- (void)refreshImage
{
    _photoImageView.image = _originImage;
    
    if (_originImage.size.width > SCREEN_WIDTH) {
        CGFloat imageScale = SCREEN_WIDTH / _originImage.size.width;
        
        _imageWidth.constant = SCREEN_WIDTH;
        _imageHeight.constant = _originImage.size.height * imageScale;
    } else {
        _imageWidth.constant = _originImage.size.width;
        _imageHeight.constant = _originImage.size.height;
    }
}

- (IBAction)repeatAction:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)finishAction:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
