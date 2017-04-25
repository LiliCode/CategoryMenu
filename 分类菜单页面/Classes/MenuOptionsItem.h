//
//  MenuOptionsItem.h
//  分类菜单页面
//
//  Created by LiliEhuu on 17/4/25.
//  Copyright © 2017年 LiliEhuu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuOptionsItem : NSObject

@property (assign , nonatomic) NSUInteger optionsId;    //选项id
@property (copy , nonatomic) NSString *optionsName;     //选项名称
@property (assign , nonatomic) BOOL showsIndicator;     //是否显示指示器
@property (assign , nonatomic) BOOL selected;           //是否选中

/**
 创建一个选项模型

 @param name 选项名称
 @param oid 选项id
 @param showsIndicator 是否显示指示器
 @return 返回object
 */
+ (instancetype)optionsItemWithName:(NSString *)name optionsId:(NSUInteger)oid showsIndicator:(BOOL)showsIndicator;

@end
