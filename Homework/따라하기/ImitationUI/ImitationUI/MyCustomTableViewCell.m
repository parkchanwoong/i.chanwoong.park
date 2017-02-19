//
//  MyCustomTableViewCell.m
//  ImitationUI
//
//  Created by 박찬웅 on 2017. 2. 19..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "MyCustomTableViewCell.h"


@interface MyCustomTableViewCell ()
//바닥 버튼 뷰
@property (nonatomic ,weak) UIView *bottomView;
//******바닥 버튼******
//월
@property (nonatomic ,weak) UIButton *btnMonth;
//년
@property (nonatomic ,weak) UIButton *btnYear;
//추가
@property (nonatomic ,weak) UIButton *btnPlus;
//보기방식변경
@property (nonatomic ,weak) UIButton *btnView;
//옵션
@property (nonatomic ,weak) UIButton *btnOption;

@end

@implementation MyCustomTableViewCell



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
        [self updateLayout];
    }
    return self;
}



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews
{
    [self updateLayout];
}

- (void)createSubViews
{
    //바닥 버튼 뷰
    UIView *bottomView = [[UIView alloc]init];
    [self addSubview:bottomView];
    self.bottomView = bottomView;
    
    //월 버튼
    UIButton *btnMonth = [[UIButton alloc]init];
    [btnMonth setTitle:@"FEBRUARY" forState:UIControlStateNormal];
    [btnMonth setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bottomView addSubview:btnMonth];
    self.btnMonth = btnMonth;
    
    //년 버튼
    UIButton *btnYear = [[UIButton alloc]init];
    [btnYear setTitle:@"2017" forState:UIControlStateNormal];
    [btnYear setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bottomView addSubview:btnYear];
    self.btnYear = btnYear;
    
    //추가 버튼
    UIButton *btnPlus = [[UIButton alloc]init];
    [btnPlus setTitle:@"+" forState:UIControlStateNormal];
    [btnPlus setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bottomView addSubview:btnPlus];
    self.btnPlus = btnPlus;
    //보기방식변경
    UIButton *btnView = [[UIButton alloc]init];
    [btnView setTitle:@"---" forState:UIControlStateNormal];
    [btnView setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bottomView addSubview:btnView];
    self.btnView = btnView;
    
    //옵션
    UIButton *btnOption = [[UIButton alloc]init];
    [btnOption setTitle:@"ㅁ" forState:UIControlStateNormal];
    [btnOption setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bottomView addSubview:btnOption];
    self.btnOption = btnOption;
}

- (void)updateLayout
{
    const CGFloat MARGIN = 15;
    
    CGFloat offsetX = MARGIN;
    CGFloat offsetY = MARGIN;
    
    self.bottomView.frame = CGRectMake(0, self.frame.size.height - offsetY, self.frame.size.width, offsetY);
}



- (void)test
{
    self.backgroundColor = [UIColor colorWithRed:242/255.0 green:241/255.0 blue:237/255.0 alpha:1];
}


@end
