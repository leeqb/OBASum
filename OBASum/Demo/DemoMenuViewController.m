//
//  DemoMenuViewController.m
//  OBASum
//
//  Created by leeqb on 03/03/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "DemoMenuViewController.h"

#import "OBANetworkingTestViewController.h"

#import "YPPhotoPickerTestViewController.h"

@interface DemoMenuViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    NSString *_cellIdentifier;
    UITableView *_tableView;
}

@end

@implementation DemoMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _cellIdentifier = @"CellIdentifier";
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:_cellIdentifier];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_subMenus count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:_cellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = _subMenus[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    if (_menuType == 0) {
        OBANetworkingTestViewController *controller = [[OBANetworkingTestViewController alloc] init];
        [self.navigationController pushViewController:controller animated:YES];
    } else if (_menuType == 1) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"YPPhotoPickerTest" bundle:nil];
        YPPhotoPickerTestViewController *controller = (YPPhotoPickerTestViewController *)[sb instantiateInitialViewController];
        [self.navigationController pushViewController:controller animated:YES];
    }
}

@end
