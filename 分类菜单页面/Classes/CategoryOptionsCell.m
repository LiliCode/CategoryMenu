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
    }
    
    return self;
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

- (void)setOptionsItem:(MenuOptionsItem *)optionsItem
{
    _optionsItem = optionsItem;
    
    self.label.text = optionsItem.optionsName;
    self.accessoryType = optionsItem.showsIndicator? UITableViewCellAccessoryDisclosureIndicator : UITableViewCellAccessoryNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
}




@end





