//
//  FugitiveListViewController.h
//  iBountyHunter
//
//  Created by Dan Pilone on 2/20/11.
//  Copyright 2011 Element 84, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FugitiveListViewController : UITableViewController {
    NSMutableArray *items_;
}

@property (nonatomic, retain) NSMutableArray *items;

@end
