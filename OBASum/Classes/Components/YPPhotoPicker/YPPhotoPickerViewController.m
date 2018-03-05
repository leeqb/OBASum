//
//  YPPhotoPickerViewController.m
//  OBASum
//
//  Created by leeqb on 28/02/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "YPPhotoPickerViewController.h"

@interface YPPhotoPickerViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UIButton *backButton;

@end

@implementation YPPhotoPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_backButton setImage:[UIImage imageNamed:@"oba_yp_back_2"] forState:UIControlStateHighlighted];
}

- (IBAction)backAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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

@end
