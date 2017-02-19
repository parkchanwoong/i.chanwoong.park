//
//  MyCustomView.m
//  AS0217
//
//  Created by 박찬웅 on 2017. 2. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "MyCustomView.h"
@interface MyCustomView()

@property (nonatomic ,weak) UIImageView *profileImageView;
@property (nonatomic ,weak) UIView *profileContainer;

@property (nonatomic ,weak) UILabel *titleLB;
@property (nonatomic ,weak) UILabel *nameLB;

@property (nonatomic ,weak) UILabel *profileLB;

@end


@implementation MyCustomView



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubViews];
    }
    return self;
}

- (void)createSubViews
{
    //profileImgView
    UIImageView *profileImgView = [[UIImageView alloc]init];
    [self addSubview:profileImgView];
    self.profileImageView = profileImgView;
    //프로필 담을 컨테이너
    UIView *profileContainer = [[UIView alloc]init];
    [self addSubview:profileContainer];
    self.profileContainer = profileContainer;
    
    UILabel *titleLB = [[UILabel alloc]init];
    titleLB.text = @"타이틀~";
    titleLB.textColor = [UIColor redColor];
    titleLB.textAlignment = NSTextAlignmentCenter;
    titleLB.font = [UIFont systemFontOfSize:10];
    [profileContainer addSubview:titleLB];
    self.titleLB = titleLB;
    
    UILabel *nameLB = [[UILabel alloc]init];
    nameLB.text = @"박찬웅";
    nameLB.textColor = [UIColor yellowColor];
    nameLB.textAlignment = NSTextAlignmentCenter;
    nameLB.font = [UIFont boldSystemFontOfSize:10];
    [profileContainer addSubview:nameLB];
    self.nameLB = nameLB;
    
    UILabel *profileLB = [[UILabel alloc]init];
    profileLB.numberOfLines = 0;
    profileLB.lineBreakMode = NSLineBreakByWordWrapping;
    [self addSubview:profileLB];
    self.profileLB = profileLB;
}


























@end
