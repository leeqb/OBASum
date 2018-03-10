//
//  YPPhotoPickerViewController.m
//  OBASum
//
//  Created by leeqb on 28/02/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "YPPhotoPickerViewController.h"
#import "YPPhotoPreviewViewController.h"

@interface YPPhotoPickerViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

@implementation YPPhotoPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_backButton setImage:[UIImage imageNamed:@"oba_yp_back_2"] forState:UIControlStateHighlighted];
}

#pragma mark - Private Methods
- (void)chooseImageFrom:(UIImagePickerControllerSourceType)sourceType
{
    if ([UIImagePickerController isSourceTypeAvailable:sourceType]) {
        UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
        pickerController.delegate = self;
        pickerController.sourceType = sourceType;
        
        [self presentViewController:pickerController animated:YES completion:nil];
    } else {
        NSLog(@"无操作权限");
    }
}

#pragma mark - Button Action
// 返回
- (IBAction)backAction:(UIButton *)sender {
    if (self.navigationController.viewControllers.count == 1) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

// 拍照
- (IBAction)cameraAction:(UIButton *)sender {
    [self chooseImageFrom:UIImagePickerControllerSourceTypeCamera];
}

// 保存
- (IBAction)saveButtonAction:(UIButton *)sender {
}

#pragma mark - UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    UIImage *originImage = info[UIImagePickerControllerOriginalImage];
    
    if (picker.sourceType == UIImagePickerControllerSourceTypeCamera) { // 拍照
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"YPPhotoPicker" bundle:[NSBundle mainBundle]];
        YPPhotoPreviewViewController *controller = [sb instantiateViewControllerWithIdentifier:@"YPPhotoPreviewViewController"];
        controller.originImage = originImage;
        [self.navigationController pushViewController:controller animated:NO];
    } else { // 相册选取
        
    }
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 1;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AddPhotoCell" forIndexPath:indexPath];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self chooseImageFrom:UIImagePickerControllerSourceTypePhotoLibrary];
}

@end
