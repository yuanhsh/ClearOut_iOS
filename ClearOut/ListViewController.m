//
//  ListViewController.m
//  ClearOut
//
//  Created by YUAN on 15/7/24.
//  Copyright (c) 2015年 Yuan Haisheng. All rights reserved.
//

#import "ListViewController.h"
#import <ParseUI/PFImageView.h>
#import "ListPhotoCell.h"

@interface ListViewController ()


@end

@implementation ListViewController

- (id)initWithCoder:(NSCoder *)aCoder
{
    self = [super initWithCoder:aCoder];
    if (self) {
        // The className to query on
        self.parseClassName = @"Item";
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.tableView.contentInset = UIEdgeInsetsMake(0.0f, 0.0f, CGRectGetHeight(self.tabBarController.tabBar.frame), 0.0f);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma PFTableDelegate
- (PFUI_NULLABLE PFTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFUI_NULLABLE PFObject *)object {
    ListPhotoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPhotoCell"];
    cell.item = object;
    return cell;
}
//- (PFUI_NULLABLE PFTableViewCell *)tableView:(UITableView *)tableView cellForNextPageAtIndexPath:(NSIndexPath *)indexPath {
//    
//}

@end
