//
//  MenuOptionsItem.m
//  分类菜单页面
//
//  Created by LiliEhuu on 17/4/25.
//  Copyright © 2017年 LiliEhuu. All rights reserved.
//

#import "MenuOptionsItem.h"

@implementation MenuOptionsItem

+ (instancetype)optionsItemWithName:(NSString *)name optionsId:(NSUInteger)oid showsIndicator:(BOOL)showsIndicator
{
    return [[self alloc] initWithName:name optionsId:oid showsIndicator:showsIndicator];
}

- (instancetype)initWithName:(NSString *)name optionsId:(NSUInteger)oid showsIndicator:(BOOL)showsIndicator
{
    if (self = [super init])
    {
        self.optionsName = name;
        self.optionsId = oid;
        self.showsIndicator = showsIndicator;
    }
    
    return self;
}

@end
