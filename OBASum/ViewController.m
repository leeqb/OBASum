//
//  ViewController.m
//  OBASum
//
//  Created by leeqb on 26/02/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "ViewController.h"
#import "YPPhotoPickerTestViewController.h"
#import "DemoMenuViewController.h"

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
        _menus = @[@{@"menuName": @"API测试", @"subMenus": @[@"网络"]},
                   @{@"menuName": @"Components测试", @"subMenus": @[@"照片选择器"]}];
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
    NSDictionary *dict = _menus[indexPath.row];
    cell.textLabel.text = dict[@"menuName"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    NSDictionary *dict = _menus[indexPath.row];
    DemoMenuViewController *menuController = [[DemoMenuViewController alloc] init];
    menuController.title = dict[@"menuName"];
    menuController.menuType = indexPath.row;
    menuController.subMenus = dict[@"subMenus"];
    [self.navigationController pushViewController:menuController animated:YES];
}

@end
