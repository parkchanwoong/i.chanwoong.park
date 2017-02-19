//
//  MyCustomTableViewCell.m
//  Imitation
//
//  Created by 박찬웅 on 2017. 2. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "MyCustomTableViewCell.h"

@interface MyCustomTableViewCell ()
//버튼통
@property (nonatomic ,weak) UIView *uvw;

@property (nonatomic ,weak) UIButton *btnMonth;
@property (nonatomic ,weak) UIButton *btnYear;
@property (nonatomic ,weak) UIButton *btnPlus;
// 보는 방식 변경
@property (nonatomic ,weak) UIButton *btnChange;
@property (nonatomic ,weak) UIButton *btnOption;




@end

@implementation MyCustomTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
    }
    return self;
}

- (void)createSubViews
{
    UIView *uvw = [[UIView alloc]init];
    self.uvw = uvw;
    [self addSubview:uvw];
    
    UIButton *btnMonth = [[UIButton alloc]init];
    [btnMonth setTitle:@"FEBRUARY" forState:UIControlStateNormal];
    [uvw addSubview:btnMonth];
    self.btnMonth = btnMonth;
    
    UIButton *btnYear = [[UIButton alloc]init];
    [btnYear setTitle:@"2017" forState:UIControlStateNormal];
    [uvw addSubview:btnYear];
    self.btnYear = btnYear;
    
    UIButton *btnPlus = [[UIButton alloc]init];
    [btnPlus setTitle:@"+" forState:UIControlStateNormal];
    [uvw addSubview:btnPlus];
    self.btnPlus = btnPlus;
    
    UIButton *btnChange = [[UIButton alloc]init];
    [btnChange setTitle:@"---" forState:UIControlStateNormal];
    [uvw addSubview:btnChange];
    self.btnChange = btnChange;
    
    UIButton *btnOption = [[UIButton alloc]init];
    [btnOption setTitle:@"ㅁ" forState:UIControlStateNormal];
    [uvw addSubview:btnOption];
    self.btnOption = btnOption;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
