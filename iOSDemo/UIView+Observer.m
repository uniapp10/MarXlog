//
//  UIView+Observer.m
//  iOSDemoXlog
//
//  Created by zhudong on 2017/7/13.
//
//

#import "UIView+Observer.h"
#import <objc/runtime.h>

@implementation UIView (Observer)

//+ (void)load{
//    Method originalPoint = class_getInstanceMethod([self class], @selector(hitTest: withEvent:));
//    Method currentPoint = class_getInstanceMethod([self class], @selector(observer_hitTest: withEvent:));
//    method_exchangeImplementations(originalPoint, currentPoint);
//}
//
//- (void)observer_hitTest:(CGPoint)point withEvent:(nullable UIEvent *) event {
//    
//    [self observer_hitTest:point withEvent:event];
//}

@end
