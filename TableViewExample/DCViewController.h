//
//  DCViewController.h
//  TableViewExample
//
//  Created by Carlos Gómez on 17/05/14.
//  Copyright (c) 2014 devcfgc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (copy, nonatomic) NSArray *countries;
@property (copy, nonatomic) NSArray *countriesContinent;
@property (copy, nonatomic) NSArray *flags;

@end
