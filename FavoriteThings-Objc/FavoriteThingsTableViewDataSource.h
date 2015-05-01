//
//  FavoriteThingsTableViewDataSource.h
//  FavoriteThings-Objc
//
//  Created by Michael Sacks on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface FavoriteThingsTableViewDataSource : NSObject <UITableViewDataSource>

-(void)registerTableView:(UITableView *)tableView;

@end
