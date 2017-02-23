//
//  SettingCustomCell.h
//  SettingExample
//
//  Created by youngmin joo on 2017. 2. 22..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol  SettingCustomCellDelegate;

@interface SettingCustomCell : UITableViewCell

@property (nonatomic) NSIndexPath *indexPath;

@property (nonatomic, weak) id<SettingCustomCellDelegate> delegate;

@end


@protocol  SettingCustomCellDelegate <NSObject>

@optional
- (void)settingCustomCell:(SettingCustomCell *)cell didChangedValue:(BOOL)value;

@end
