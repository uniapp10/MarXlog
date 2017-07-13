// Tencent is pleased to support the open source community by making Mars available.
// Copyright (C) 2016 THL A29 Limited, a Tencent company. All rights reserved.

// Licensed under the MIT License (the "License"); you may not use this file except in 
// compliance with the License. You may obtain a copy of the License at
// http://opensource.org/licenses/MIT

// Unless required by applicable law or agreed to in writing, software distributed under the License is
// distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
// either express or implied. See the License for the specific language governing permissions and
// limitations under the License.

//
//  ViewController.m
//  iOSDemo
//
//  Created by caoshaokun on 16/5/10.
//  Copyright © 2016年 caoshaokun. All rights reserved.
//

#import "ViewController.h"
#import "LogUtil.h"
//#include <mars/xlog/appender.h>
#import "appender.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    LOG_DEBUG("TAG1", @"first test %@", @"110");
//    LOG_INFO("TAG1", @"first test %@", @"110");
//    LOG_WARNING("TAG1", @"first test %@", @"110");
//    LOG_ERROR("TAG1", @"first test %@", @"110");
//    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true) firstObject];
//    NSString *finalPath = [path stringByAppendingPathComponent:@"log/Test_20170711.xlog"];
//    NSString *str = [[NSString alloc] initWithData:[NSData dataWithContentsOfFile:finalPath] encoding:NSUTF8StringEncoding];
//    NSLog(@"%@", str);
//}
//
//- (void)viewWillAppear:(BOOL)animated{
//    
////    LOG_DEBUG("TAG1", @"first test %@", @"110");
////    LOG_INFO("TAG1", @"first test %@", @"110");
////    LOG_WARNING("TAG1", @"first test %@", @"110");
////    LOG_ERROR("TAG1", @"first test %@", @"110");
//}
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}



- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

#define ScreenSize [UIScreen mainScreen].bounds.size
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor brownColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    CGFloat btnW = 100;
    CGFloat leftMargin = 30;
    CGFloat centerMargin  = ScreenSize.width - 2 * (btnW + leftMargin);
    btn.frame = CGRectMake(leftMargin, 100, btnW, 40);
    btn.backgroundColor = [UIColor greenColor];
    [btn setTitle:@"showChart" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(show) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn_close = [UIButton buttonWithType:UIButtonTypeCustom];
    btn_close.frame = CGRectMake(leftMargin + btnW + centerMargin, 100, btnW, 40);
    btn_close.backgroundColor = [UIColor redColor];
    [btn_close setTitle:@"closeChart" forState:UIControlStateNormal];
    [btn_close addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_close];
    
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true) firstObject];
    NSString *finalPath = [path stringByAppendingPathComponent:@"log/Test_20170711.xlog"];
    
//    LOG_INFO("test1", @"111");
    
}

- (void)viewWillDisappear:(BOOL)animated{
    
}
- (void)show {
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:true];
}

- (void)close {
//    UIButton * btn = [UIButton new];
//    btn.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:btn];
//    btn.frame = CGRectMake(0, 30, 200, 40);
//    [btn setTitle:@"点击" forState:UIControlStateNormal];
    appender_flush();
//    UIView * viw = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
//    viw.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:viw];
    
}

@end
