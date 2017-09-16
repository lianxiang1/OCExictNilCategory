//
//  NSArray+ExtNil.m
//  CollectionViewTest
//
//  Created by imac on 2017/7/25.
//  Copyright © 2017年 xiang. All rights reserved.
//

#import "NSArray+ExtNil.h"

@implementation NSArray (ExtNil)

- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *string = [NSMutableString string];
    
    // 开头有个[
    [string appendString:@"[\n"];
    
    // 遍历所有的元素
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [string appendFormat:@"\t%@,\n", obj];
    }];
    
    // 结尾有个]
    [string appendString:@"]"];
    
    // 查找最后一个逗号
    NSRange range = [string rangeOfString:@"," options:NSBackwardsSearch];
    if (range.location != NSNotFound)
        [string deleteCharactersInRange:range];
    
    return string;
}

+(instancetype)arrayWithObjects:(const id [])objects count:(NSUInteger)cnt {
    
    NSMutableArray *ma = [NSMutableArray new];
    for (NSUInteger i = 0; i < cnt; i ++) {
        if (objects[i]) { [ma addObject:objects[i]];
        }
    }
    return [[NSArray alloc] initWithArray:ma];
    
}


@end
