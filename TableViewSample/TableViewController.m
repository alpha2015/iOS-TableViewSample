//
//  TableViewController.m
//  TableViewSample
//
//  Created by 최성원 on 2015. 9. 18..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import "TableViewController.h"

@implementation TableViewController
{
    NSMutableArray *appDatas;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self tableView] registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"cell"];
    
    appDatas = [[NSMutableArray alloc] init];

    NSURL *dataUrl = [NSURL URLWithString:@"https://itunes.apple.com/kr/rss/toppaidapplications/limit=100/json"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:dataUrl];
//    
//    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSData *data = [NSData dataWithContentsOfURL:dataUrl];
    
    NSDictionary *parsedData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    NSArray *tempAppDatas = [[parsedData objectForKey:@"feed"] objectForKey:@"entry"];
    
    for (NSDictionary *thisApp in tempAppDatas) {
        [appDatas addObject:[[AppInfo alloc] initWithAppInfo:thisApp]];
    }
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return appDatas.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"APP RANKING";
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    [[cell myImageView] setImage:[[appDatas objectAtIndex:[indexPath row]] image]];
    [[cell titleLabel] setText:[[appDatas objectAtIndex:[indexPath row]] name]];
    [[cell subTitleLabel] setText:[[appDatas objectAtIndex:[indexPath row]] rights]];
    
    return cell;
}
@end
