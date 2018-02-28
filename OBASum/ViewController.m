//
//  ViewController.m
//  OBASum
//
//  Created by leeqb on 26/02/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "ViewController.h"
#import "YPPhotoPickerTestViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *_menus;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _menus = @[@"衣拼图片选择器"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_menus count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MenuCell" forIndexPath:indexPath];
    cell.textLabel.text = _menus[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    switch (indexPath.row) {
        case 0:
        {
            UIStoryboard *sb = [UIStoryboard storyboardWithName:@"YPPhotoPickerTest" bundle:nil];
            YPPhotoPickerTestViewController *controller = (YPPhotoPickerTestViewController *)[sb instantiateInitialViewController];
            [self.navigationController pushViewController:controller animated:YES];
            break;
        }
        default:
            break;
    }
}

@end
