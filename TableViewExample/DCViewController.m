//
//  DCViewController.m
//  TableViewExample
//
//  Created by Carlos Gómez on 17/05/14.
//  Copyright (c) 2014 devcfgc. All rights reserved.
//

#import "DCViewController.h"
#import "DCTableViewCell.h"

@interface DCViewController ()

@end

@implementation DCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Countries names
    self.countries = [NSArray arrayWithObjects:@"England", @"France", @"USA", @"Spain", @"Mexico", @"Germany", @"Russia", @"Uruguay", @"China", @"Indonesia", @"Nigeria", @"Egypt", @"Japan", @"Colombia", nil];
    
    self.countriesContinent = [NSArray arrayWithObjects:@"Europe", @"Europe", @"America", @"Europe", @"America", @"Europe", @"Europe and Asia", @"America", @"Asia", @"Asia", @"Africa", @"Africa", @"Asia", @"America", nil];
    
    // Initialize flagsImages
    self.flags = [NSArray arrayWithObjects:@"england.jpg", @"france.jpg", @"usa.jpg", @"spain.jpg", @"mexico.jpg", @"germany.jpg", @"russia.jpg", @"uruguay.jpg", @"china.jpg", @"indonesia.jpg", @"nigeria.jpg", @"egypt.jpg", @"japan.jpg", @"colombia.jpg", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.countries count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    This block of code use the default cell style
    //    static NSString *tableIdentifier = @"SimpleTableItem";
    //
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    //    if (cell == nil) {
    //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:tableIdentifier];
    //    }
    //    cell.textLabel.text = [self.countries objectAtIndex:indexPath.row];
    //    cell.textLabel.font = [UIFont boldSystemFontOfSize:20];
    //    cell.detailTextLabel.text = [self.countriesContinent objectAtIndex:indexPath.row];
    //    cell.imageView.image = [UIImage imageNamed:[self.flags objectAtIndex:indexPath.row]];
    
    //Use the custom cell
    DCTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCustomCell"];
    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"DCTableViewCell" bundle:nil] forCellReuseIdentifier:@"MyCustomCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"MyCustomCell"];
    }
    
    cell.countriesName.text = [self.countries objectAtIndex:indexPath.row];
    cell.countriesContinent.text = [self.countriesContinent objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[self.flags objectAtIndex:indexPath.row]];
    
    
    return cell;
}

//When we tap on a row we run didSelectRowAtIndexPath
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *rowValue = self.countries[indexPath.row];
    NSString *message = [[NSString alloc] initWithFormat:@"You selected %@" , rowValue];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Row selected" message:message delegate:nil cancelButtonTitle:@"Hell Yes" otherButtonTitles:nil, nil];
    [alert show];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

//Stablish the height for rows
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
