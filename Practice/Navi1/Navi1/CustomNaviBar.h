//
//  CustomNaviBar.h
//  Navi1
//
//  Created by youngmin joo on 2017. 2. 21..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomNaviBar : UIView

@property (nonatomic,weak) UIImageView *leftView;
@property (nonatomic,weak) UILabel *titleView;
@property (nonatomic,weak) UIButton *leftBtn;

@property (nonatomic) UIImageView *bgImg;

- (void)setIsShowBack:(BOOL)isShowBack;
- (void)setBarColor:(UIColor *)color;
- (void)setTitle:(NSString *)title;
- (void)addLeftBtnTarget:(id)target selector:(SEL)selector event:(UIControlEvents)evnet;

- (void)hiddenView;
@end
