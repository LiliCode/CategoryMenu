//
//  CategoryBaseController.h
//  分类菜单页面
//
//  Created by LiliEhuu on 17/4/25.
//  Copyright © 2017年 LiliEhuu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryBaseController : UIViewController



/**
 设置菜单列表宽度

 @param width 宽度，浮点型数据
 */
- (void)setMenuWidth:(CGFloat)width;

/**
 设置菜单类别数据

 @param list 列表数据，NSArray *
 */
- (void)setMenuData:(NSArray *)list;

/**
 设置contentView

 @param contentView 内容视图，可以是表视图，集合视图
 */
- (void)setContentView:(UIView *)contentView;

@end
