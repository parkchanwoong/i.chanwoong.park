//
//  SettingCustomCell.m
//  SettingExample
//
//  Created by youngmin joo on 2017. 2. 22..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "SettingCustomCell.h"
#import "DataCenter.h"

@interface SettingCustomCell ()

@property UISwitch *switcher;

@end

@implementation SettingCustomCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSwitcher];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)addSwitcher
{
    self.switcher = [[UISwitch alloc] init];
    [self.switcher addTarget:self action:@selector(switcherClick:) forControlEvents:UIControlEventValueChanged];
    self.accessoryView = self.switcher;
    
//    [self.switcher setOn:[DataCenter sharedInstance].swOnOff];
    self.switcher.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"switcher"];
}

- (void)switcherClick:(UISwitch *)sender
{
//    [DataCenter sharedInstance].swOnOff = self.switcher.on;
    [[NSUserDefaults standardUserDefaults] setBool:self.switcher.on forKey:@"switcher"];
    
    if ([self.delegate respondsToSelector:@selector(settingCustomCell:didChangedValue:)]) {
        [self.delegate settingCustomCell:self didChangedValue:sender.isOn];
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
