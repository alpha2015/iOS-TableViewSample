//
//  MyTableViewCell.h
//  TableViewSample
//
//  Created by 최성원 on 2015. 9. 18..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell

@property (nonatomic, readonly)UIImageView *myImageView;
@property (nonatomic, readonly)UILabel *titleLabel;
@property (nonatomic, readonly)UILabel *subTitleLabel;

@end
