//
//  CategoryMenuController.m
//  分类菜单页面
//
//  Created by LiliEhuu on 17/4/25.
//  Copyright © 2017年 LiliEhuu. All rights reserved.
//

#import "CategoryMenuController.h"
#import "MenuOptionsItem.h"

@interface CategoryMenuController ()

@end

@implementation CategoryMenuController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    MenuOptionsItem *item1 = [MenuOptionsItem optionsItemWithName:@"感冒用药" optionsId:1 showsIndicator:NO];
    MenuOptionsItem *item2 = [MenuOptionsItem optionsItemWithName:@"风湿骨痛" optionsId:2 showsIndicator:NO];
    MenuOptionsItem *item3 = [MenuOptionsItem optionsItemWithName:@"高血压药" optionsId:3 showsIndicator:NO];
    MenuOptionsItem *item4 = [MenuOptionsItem optionsItemWithName:@"五官用药" optionsId:4 showsIndicator:NO];
    MenuOptionsItem *item5 = [MenuOptionsItem optionsItemWithName:@"清热解毒" optionsId:5 showsIndicator:NO];
    MenuOptionsItem *item6 = [MenuOptionsItem optionsItemWithName:@"皮肤用药" optionsId:6 showsIndicator:NO];
    MenuOptionsItem *item7 = [MenuOptionsItem optionsItemWithName:@"妇科用药" optionsId:7 showsIndicator:NO];
    MenuOptionsItem *item8 = [MenuOptionsItem optionsItemWithName:@"男科用药" optionsId:8 showsIndicator:NO];
    MenuOptionsItem *item9 = [MenuOptionsItem optionsItemWithName:@"儿童用药" optionsId:9 showsIndicator:NO];
    MenuOptionsItem *item10 = [MenuOptionsItem optionsItemWithName:@"肠胃用药" optionsId:10 showsIndicator:NO];
    MenuOptionsItem *item0 = [MenuOptionsItem optionsItemWithName:@"更多分类" optionsId:0 showsIndicator:YES];
    
    [self setMenuData:@[item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item0]];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



@end



