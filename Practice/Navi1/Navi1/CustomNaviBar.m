//
//  CustomNaviBar.m
//  Navi1
//
//  Created by youngmin joo on 2017. 2. 21..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "CustomNaviBar.h"

@implementation CustomNaviBar

-(instancetype)init
{
    self = [super init];
    if (self) {
        CGRect ScreenSize = [UIScreen mainScreen].bounds;
        self.frame = CGRectMake(0, 0, ScreenSize.size.width, 60);
        [self creatView];
        [self updateLayout];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    CGRect ScreenSize = [UIScreen mainScreen].bounds;
    self = [super initWithFrame:CGRectMake(0, 0, ScreenSize.size.width, 60)];
    if (self) {
        [self creatView];
        [self updateLayout];
    }
    return self;
}

- (void)creatView
{
    UILabel *titleView = [[UILabel alloc] init];
    titleView.textAlignment = NSTextAlignmentCenter;
    titleView.font = [UIFont boldSystemFontOfSize:20];
    [self addSubview:titleView];
    self.titleView = titleView;
    
    UIImageView *leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"images.jpeg"]];
    [self addSubview:leftView];
    self.leftView = leftView;
    
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftBtn setTitle:@"back" forState:UIControlStateNormal];
    [leftBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:leftBtn];
    self.leftBtn = leftBtn;
 
    
}


- (void)updateLayout
{
    if (!self.leftView.isHidden) {
        [self.leftView setFrame:CGRectMake(5, 20, 35, 35)];
    }
    if (!self.leftBtn.isHidden) {
        [self.leftBtn setFrame:CGRectMake(350, 20, 35, 35)];
    }
    
    [self.titleView setFrame:CGRectMake(self.frame.size.width/2- 75, 20, 150, 35)];
}

- (void)addLeftBtnTarget:(id)target selector:(SEL)selector event:(UIControlEvents)evnet
{
    [self.leftBtn addTarget:target action:selector forControlEvents:evnet];
}

- (void)hiddenView
{
    self.leftView.hidden = YES;
    [self.leftBtn setHidden:YES];
}

- (void)setIsShowBack:(BOOL)isShowBack
{
    if (isShowBack) {
        self.leftView.hidden = YES;
        [self.leftBtn setHidden:YES];
    }else
    {
        [self.leftView setHidden:YES];
        self.leftBtn.hidden = YES;
    }
}

- (void)setBarColor:(UIColor *)color
{
    self.backgroundColor = color;
}

- (void)setTitle:(NSString *)title
{
    self.titleView.text = title;
}

@end
