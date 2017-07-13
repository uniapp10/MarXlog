//
//  SecondViewController.m
//  iOSDemoXlog
//
//  Created by zhudong on 2017/7/12.
//
//

#import "SecondViewController.h"

@interface SecondViewController ()
//@property (nonatomic, copy) NSString *growingAttributesUniqueTag;
@end

@implementation SecondViewController

#define ScreenSize [UIScreen mainScreen].bounds.size
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
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
}


- (void)show {
    
}

- (void)close {
    
}

@end
