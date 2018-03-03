//
//  OBANetworkingTestViewController.m
//  OBASum
//
//  Created by leeqb on 03/03/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "OBANetworkingTestViewController.h"

@interface OBANetworkingTestViewController ()

@end

@implementation OBANetworkingTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testBtn.frame = CGRectMake(self.view.center.x - 60, self.view.center.y, 120, 44);
    [testBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [testBtn setTitle:@"网络测试" forState:UIControlStateNormal];
    [testBtn addTarget:self action:@selector(netTest) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
}

- (void)netTest
{
    NSLog(@"ssssss");
    NSDictionary *params = @{@"login_name": @"18580446520", @"login_password": @"hKXbFgNW+4puLm6ipNB3xoDG5Yq0tL7cepiYdP9sBDqKTpURzzD+1DjHcJjY1WApJsiPjuuXwJ4BD+yXLsPBlg=="};
    [OBANetwork post:@"http://yipin.meitiapp.com:8888/system/account/buyer_login" params:params finishedBlock:^(id responseObject, NSError *error) {
        NSLog(@"%@", responseObject);
    }];
}

@end
