//
//  DCTableViewCell.h
//  TableViewExample
//
//  Created by carlos on 07/06/14.
//  Copyright (c) 2014 devcfgc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *flags;
@property (strong, nonatomic) IBOutlet UILabel *countriesName;
@property (strong, nonatomic) IBOutlet UILabel *countriesContinent;

@end
