//
//  AppInfo.h
//  TableViewSample
//
//  Created by 최성원 on 2015. 9. 20..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppInfo : NSObject

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *rights;
@property (nonatomic, readonly) NSURL    *imageUrl;
@property (nonatomic, readonly) UIImage  *image;

- (instancetype) initWithAppInfo:(NSDictionary *)appInfo;

@end
