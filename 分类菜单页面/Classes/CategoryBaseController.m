//
//  CategoryBaseController.m
//  分类菜单页面
//
//  Created by LiliEhuu on 17/4/25.
//  Copyright © 2017年 LiliEhuu. All rights reserved.
//

#import "CategoryBaseController.h"
#import "CategoryOptionsCell.h"

@interface CategoryBaseController ()
@property (strong , nonatomic) UITableView *menuTableView;
@property (strong , nonatomic) UIView *baseContentView;
@property (strong , nonatomic) NSArray *menuList;
@property (strong , nonatomic) UIColor *optionsHColor;
@property (strong , nonatomic) MenuOptionsItem *lastSelectedItem;
@property (strong , nonatomic) NSIndexPath *lastSelectedIndexPath;

@end

@implementation CategoryBaseController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //加载页面
    [self.view addSubview:self.menuTableView];  //添加菜单列表视图
    self.menuTableView.delegate = self;
    self.menuTableView.dataSource = self;
    [self.view addSubview:self.baseContentView];//添加内容视图
    self.baseContentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.baseContentView.backgroundColor = [UIColor grayColor];
    //注册菜单Cell
    [self.menuTableView registerClass:[CategoryOptionsCell class] forCellReuseIdentifier:@"MenuCell"];
}

- (UITableView *)menuTableView
{
    if (!_menuTableView)
    {
        _menuTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width * 1.0f/3.0f, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
        _menuTableView.tag = UITableViewTag_menu;
        _menuTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _menuTableView.rowHeight = 50.0f;
    }
    
    return _menuTableView;
}

- (UIView *)baseContentView
{
    if (!_baseContentView)
    {
        _baseContentView = [[UIView alloc] init];
        CGFloat menuWith = [UIScreen mainScreen].bounds.size.width * 1.0f/3.0f;
        _baseContentView.frame = CGRectMake(menuWith, 0, [UIScreen mainScreen].bounds.size.width - menuWith, [UIScreen mainScreen].bounds.size.height);
    }
    
    return _baseContentView;
}


- (void)setMenuWidth:(CGFloat)width
{
    CGRect bounds = self.menuTableView.bounds;
    bounds.size.width = width;
    self.menuTableView.bounds = bounds;
}

- (void)setMenuData:(NSArray *)list
{
    self.menuList = [list copy];
    //设置第一个为选中
    self.lastSelectedItem = list.firstObject;
    self.lastSelectedItem.selected = YES;
}

- (void)setContentView:(UIView *)contentView
{
    [self.baseContentView addSubview:contentView];
    contentView.frame = self.baseContentView.bounds;
}

- (void)setOptionsHighlightedColor:(UIColor *)color
{
    self.optionsHColor = color;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.menuList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CategoryOptionsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MenuCell" forIndexPath:indexPath];
    
    cell.hColor = self.optionsHColor;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.optionsItem = [self.menuList objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //如果选中和上一次为同一个，则不处理选中操作
    if ([self.lastSelectedIndexPath isEqual:indexPath])
    {
        return;
    }
    
    //设置选中高亮
    self.lastSelectedItem.selected = NO;
    self.lastSelectedItem = [self.menuList objectAtIndex:indexPath.row];
    self.lastSelectedItem.selected = YES;
    //刷新高亮
    [self.menuTableView reloadData];
    //设置当前的lastSelectedIndexPath
    self.lastSelectedIndexPath = [NSIndexPath indexPathForRow:indexPath.row inSection:indexPath.section];
    
    //回调
    if ([self respondsToSelector:@selector(menuTableView:didSelectOptions:)])
    {
        [self menuTableView:self.menuTableView didSelectOptions:self.lastSelectedItem];
    }
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



@end





