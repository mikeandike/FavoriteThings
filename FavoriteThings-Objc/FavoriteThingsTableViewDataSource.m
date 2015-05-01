//
//  FavoriteThingsTableViewDataSource.m
//  FavoriteThings-Objc
//
//  Created by Michael Sacks on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavoriteThingsTableViewDataSource.h"

static NSString *cellID = @"cellID";

@interface FavoriteThingsTableViewDataSource()

@end

@implementation FavoriteThingsTableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self favoriteThings].count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if(!cell){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = [self favoriteThings][indexPath.row];
    
    return cell;
}

-(void)registerTableView:(UITableView *)tableView{
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
}

- (NSArray *)favoriteThings {
    return @[@"Model S", @"BYU Football", @"BYU Basketball", @"iPhone", @"Mac", @"Podcasts", @"LOST", @"Leroy", @"Jenkins", @"Let's Do This", @"Tomatoes", @"Bananas", @"Guac"];
}

@end
