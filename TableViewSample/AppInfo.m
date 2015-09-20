
//
//  AppInfo.m
//  TableViewSample
//
//  Created by 최성원 on 2015. 9. 20..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import "AppInfo.h"

@implementation AppInfo
{
    NSString *name;
    NSString *rights;
    NSURL    *imageUrl;
    UIImage  *image;
}

@synthesize name = name;
@synthesize rights = rights;
@synthesize imageUrl = imageUrl;
@synthesize image = image;

- (instancetype) initWithAppInfo:(NSDictionary *)appInfo {
    self = [super init];
    if (self) {
        name = [[appInfo valueForKey:@"im:name"] valueForKey:@"label"];
        rights = [[appInfo valueForKey:@"rights"] valueForKey:@"label"];
        imageUrl = [NSURL URLWithString:[[[appInfo valueForKey:@"im:image"] firstObject ] valueForKey:@"label"]];
        image = [UIImage imageWithData:[NSData dataWithContentsOfURL:imageUrl]];
    }
    return self;
}

@end
