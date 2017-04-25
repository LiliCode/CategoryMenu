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
@property (strong , nonatomic) UITableView *tableView;  //展示内容的表视图
@property (strong , nonatomic) NSArray *contentList;    //内容列表

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
    MenuOptionsItem *item0 = [MenuOptionsItem optionsItemWithName:@"更多分类" optionsId:0 showsIndicator:NO];
    
    [self setMenuData:@[item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item0]];
    [self setOptionsHighlightedColor:[UIColor redColor]];
    
    
    [self setContentView:self.tableView];
}


- (UITableView *)tableView
{
    if (!_tableView)
    {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 200, 300) style:UITableViewStylePlain];
    }
    
    return _tableView;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView.tag == UITableViewTag_menu)
    {
        return [super tableView:tableView numberOfRowsInSection:section];
    }
    
    return self.contentList.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView.tag == UITableViewTag_menu)
    {
        [super tableView:tableView didSelectRowAtIndexPath:indexPath];
    }
    else
    {
        NSLog(@"点击了内容");
    }
}

- (void)menuTableView:(UITableView *)tableView didSelectOptions:(MenuOptionsItem *)options
{
    NSLog(@"点击了 %lu", options.optionsId);
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



@end



