//
//  NSMutableArray+ExtNil.m
//  CollectionViewTest
//
//  Created by imac on 2017/7/25.
//  Copyright © 2017年 xiang. All rights reserved.
//

#import "NSMutableArray+ExtNil.h"
#import <objc/runtime.h>
@implementation NSMutableArray (ExtNil)

+(void)load {
    Method fromMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(objectAtIndex:));
    Method toMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(em_objectAtIndex:));
    method_exchangeImplementations(fromMethod, toMethod);
}

- (id)em_objectAtIndex:(NSUInteger)index {
    if (self.count - 1 < index) {
        return @"越界";
    }else {
        return [self em_objectAtIndex:index];
    }
}
@end
