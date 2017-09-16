//
//  NSDictionary+ExtNil.m
//  CollectionViewTest
//
//  Created by imac on 2017/7/25.
//  Copyright © 2017年 xiang. All rights reserved.
//

#import "NSDictionary+ExtNil.h"

@implementation NSDictionary (ExtNil)

-(NSString *)descriptionWithLocale:(id)locale{
    
    NSMutableString *string = [NSMutableString string];
    // 开头有个{
    [string appendString:@"{\n"];
    
    // 遍历所有的键值对
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [string appendFormat:@"\t%@", key];
        [string appendString:@" : "];
        [string appendFormat:@"%@,\n", obj];
    }];
    // 结尾有个}
    [string appendString:@"}"];
    // 查找最后一个逗号
    NSRange range = [string rangeOfString:@"," options:NSBackwardsSearch];
    if (range.location != NSNotFound)
        [string deleteCharactersInRange:range];
    
    return string;
}

+(instancetype)dictionaryWithObjects:(const id[])objects forKeys:(const id[])keys count:(NSUInteger)cnt {
    
    NSMutableArray *validKeys = [NSMutableArray new];
    NSMutableArray *validObjs = [NSMutableArray new];
    for (NSUInteger i = 0; i < cnt; i ++) {
        if (objects[i] && keys[i]) { [validKeys addObject:keys[i]];
            [validObjs addObject:objects[i]];
        }
    }
    
    return [self dictionaryWithObjects:validObjs forKeys:validKeys];
}


@end
