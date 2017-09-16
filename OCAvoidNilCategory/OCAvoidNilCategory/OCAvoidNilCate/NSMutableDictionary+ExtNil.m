//
//  NSMutableDictionary+ExtNil.m
//  CollectionViewTest
//
//  Created by imac on 2017/7/25.
//  Copyright © 2017年 xiang. All rights reserved.
//

#import "NSMutableDictionary+ExtNil.h"
#import <objc/runtime.h>
@implementation NSMutableDictionary (ExtNil)

+ (void)load {
    
    Method fromMethod = class_getInstanceMethod(objc_getClass("__NSDictionaryM"), @selector(setObject:forKey:));
    Method toMethod = class_getInstanceMethod(objc_getClass("__NSDictionaryM"), @selector(em_setObject:forKey:));
    method_exchangeImplementations(fromMethod, toMethod);
}

- (void)em_setObject:(id)emObject forKey:(NSString *)key {
    if (emObject == nil) {
        
        [self em_setObject:@"字典插入了nil" forKey:key];
    }else {
        [self em_setObject:emObject forKey:key];
    }
}

@end
