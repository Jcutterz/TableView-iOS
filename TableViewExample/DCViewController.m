//
//  DCViewController.m
//  TableViewExample
//
//  Created by Carlos Gómez on 17/05/14.
//  Copyright (c) 2014 devcfgc. All rights reserved.
//

#import "DCViewController.h"

@interface DCViewController ()

@end

@implementation DCViewController

NSArray *tableData;
NSArray *flagsImages;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Initialize table data
    tableData = [NSArray arrayWithObjects:@"England", @"France", @"USA", @"Spain", @"Mexico", @"Germany", @"Russia", @"Uruguay", @"China", @"Indonesia", @"Nigeria", @"Egypt", @"Japan", @"Colombia", nil];
    
    // Initialize flagsImages
    flagsImages = [NSArray arrayWithObjects:@"england.jpg", @"france.jpg", @"usa.jpg", @"spain.jpg", @"mexico.jpg", @"germany.jpg", @"russia.jpg", @"uruguay.jpg", @"china.jpg", @"indonesia.jpg", @"nigeria.jpg", @"egypt.jpg", @"japan.jpg", @"colombia.jpg", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[flagsImages objectAtIndex:indexPath.row]];
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
