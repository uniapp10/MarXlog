//
//  UIViewController+Observer.m
//  iOSDemoXlog
//
//  Created by zhudong on 2017/7/12.
//
//

#import "UIViewController+Observer.h"
#import <objc/runtime.h>
#import "LogUtil.h"

@implementation UIViewController (Observer)

+ (void)load{
    Method originalAppear = class_getInstanceMethod([self class], @selector(viewWillAppear:));
    Method currentAppear = class_getInstanceMethod([self class], @selector(pagerIn:));
    method_exchangeImplementations(originalAppear, currentAppear);
    
    Method originalDisappear = class_getInstanceMethod([self class], @selector(viewWillDisappear:));
    Method currentDisappear = class_getInstanceMethod([self class], @selector(pagerOut:));
    method_exchangeImplementations(originalDisappear, currentDisappear);
    
    
}

- (void)pagerIn:(BOOL)animated{
    NSString *className = NSStringFromClass([self class]);
    
    if (className) {
        LOG_INFO("Page", @"%@", className);
    }
    
    [self pagerIn:animated];
}

- (void)pagerOut:(BOOL)animated{
    NSString *className = NSStringFromClass([self class]);
    
    if (className) {
        LOG_INFO("Page", @"%@", className);
    }
    
    [self pagerOut:animated];
}
@end
