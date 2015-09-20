//
//  MyTableViewCell.m
//  TableViewSample
//
//  Created by 최성원 on 2015. 9. 18..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell
{
    UIImageView *imageView;
    UILabel *titleLabel;
    UILabel *subTitleLabel;
}

@synthesize myImageView = imageView;
@synthesize titleLabel = titleLabel;
@synthesize subTitleLabel = subTitleLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        imageView = [[UIImageView alloc]init];
        
        titleLabel = [[UILabel alloc]init];
        titleLabel.font = [UIFont systemFontOfSize:14];
        [titleLabel setTextAlignment:NSTextAlignmentLeft];
        
        subTitleLabel = [[UILabel alloc]init];
        subTitleLabel.font = [UIFont systemFontOfSize:8];
        [subTitleLabel setTextAlignment:NSTextAlignmentLeft];
        
        [self.contentView addSubview:titleLabel];
        [self.contentView addSubview:subTitleLabel];
        [self.contentView addSubview:imageView];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    CGRect contentRect = self.contentView.bounds;
    CGFloat boundsX = contentRect.origin.x;
    CGRect frame;
    
    frame = CGRectMake(boundsX+10, 0, 50, 50);
    imageView.frame = frame;
    
    frame = CGRectMake(boundsX+70, 5, 200, 25);
    titleLabel.frame = frame;
    
    frame = CGRectMake(boundsX+70, 30, 100, 15);
    subTitleLabel.frame = frame;
}

@end
