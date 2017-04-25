//
//  CategoryOptionsCell.m
//  分类菜单页面
//
//  Created by LiliEhuu on 17/4/25.
//  Copyright © 2017年 LiliEhuu. All rights reserved.
//

#import "CategoryOptionsCell.h"

@interface CategoryOptionsCell ()
@property (strong , nonatomic) UILabel *label;
@property (strong , nonatomic) UIImageView *line;
@property (strong , nonatomic) UIImageView *highlightedBar;

@end

@implementation CategoryOptionsCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        [self.contentView addSubview:self.label];
        self.label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //line
        self.line = [[UIImageView alloc] initWithFrame:CGRectMake(0, self.bounds.size.height - .3, self.bounds.size.width, .3)];
        self.line.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:.3];
        [self addSubview:self.line];
        //highlightedBar
        [self addSubview:self.highlightedBar];
    }
    
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.line.frame = CGRectMake(0, self.bounds.size.height - .3, self.bounds.size.width, .3);
    self.highlightedBar.frame = CGRectMake(0, 0, 5, self.bounds.size.height);
}

- (UILabel *)label
{
    if (!_label)
    {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(8, 8, self.bounds.size.width - 16, self.bounds.size.height - 16)];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.font = [UIFont systemFontOfSize:16.0f];
    }
    
    return _label;
}

- (UIImageView *)highlightedBar
{
    if (!_highlightedBar)
    {
        _highlightedBar = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 5, self.bounds.size.height)];
        _highlightedBar.backgroundColor = [UIColor clearColor];
    }
    
    return _highlightedBar;
}

- (void)setOptionsItem:(MenuOptionsItem *)optionsItem
{
    _optionsItem = optionsItem;
    
    self.label.text = optionsItem.optionsName;
    self.accessoryType = optionsItem.showsIndicator? UITableViewCellAccessoryDisclosureIndicator : UITableViewCellAccessoryNone;
    self.highlightedBar.backgroundColor = optionsItem.selected? self.hColor : [UIColor clearColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    
}

@end





