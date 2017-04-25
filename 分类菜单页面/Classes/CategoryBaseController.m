//
//  CategoryBaseController.m
//  分类菜单页面
//
//  Created by LiliEhuu on 17/4/25.
//  Copyright © 2017年 LiliEhuu. All rights reserved.
//

#import "CategoryBaseController.h"
#import "CategoryOptionsCell.h"

@interface CategoryBaseController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong , nonatomic) UITableView *menuTableView;
@property (strong , nonatomic) UIView *baseContentView;
@property (strong , nonatomic) NSArray *menuList;

@end

@implementation CategoryBaseController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //加载页面
    [self.view addSubview:self.menuTableView];  //添加菜单列表视图
    self.menuTableView.delegate = self;
    self.menuTableView.dataSource = self;
    [self.view addSubview:self.baseContentView];//添加内天视图
    self.baseContentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.baseContentView.backgroundColor = [UIColor grayColor];
    //注册菜单Cell
    [self.menuTableView registerClass:[CategoryOptionsCell class] forCellReuseIdentifier:@"MenuCell"];
}

- (UITableView *)menuTableView
{
    if (!_menuTableView)
    {
        _menuTableView = [[UITableView alloc] init];
        _menuTableView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width * 1.0f/3.0f, [UIScreen mainScreen].bounds.size.height);
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
    [self.view setNeedsLayout];
}

- (void)setMenuData:(NSArray *)list
{
    self.menuList = [list copy];
}

- (void)setContentView:(UIView *)contentView
{
    [self.baseContentView addSubview:contentView];
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
    
    cell.optionsItem = [self.menuList objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



@end





