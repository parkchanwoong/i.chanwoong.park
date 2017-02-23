//
//  MyCustomTableViewCell.m
//  Practice0217
//
//  Created by 박찬웅 on 2017. 2. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "MyCustomTableViewCell.h"

@interface MyCustomTableViewCell ()

//프로필 이미지뷰
@property (nonatomic, weak) UIImageView *profileImgView;
//프로필 담을 뷰
@property (nonatomic, weak) UIView *profileTextContainer;
//네임 레이블
@property (nonatomic, weak) UILabel *titleLB;
@property (nonatomic, weak) UILabel *nameLB;
//자기소개 레이블
@property (nonatomic, weak) UILabel *profileLB;

@end

@implementation MyCustomTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
        [self updateLayout];
        [self test];
    }
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    // for interface builder >> storyboard
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews
{
    [self updateLayout];
}

/////////////////////////////
- (void)createSubViews
{
    //************ Profile UI ****************
    UIImageView *profileImgView = [[UIImageView alloc]init];
    
    profileImgView.clipsToBounds = YES;
    [self addSubview:profileImgView];    //self.view 안 쓴 이유는 자기 자신이 '뷰' 이기떄문.
    self.profileImgView = profileImgView;
    
    //************ Name UI *******************
    UIView *profileTextContainer = [[UIView alloc]init];
    [self addSubview:profileTextContainer];
    self.profileTextContainer = profileTextContainer;
    
    UILabel *titleLB = [[UILabel alloc]init];
    titleLB.text = @"Profile";
    titleLB.textColor = [UIColor lightGrayColor];
    titleLB.textAlignment = NSTextAlignmentRight;
    titleLB.font = [UIFont systemFontOfSize:9];
    [profileTextContainer addSubview:titleLB];
    self.titleLB = titleLB;
    
    UILabel *nameLB = [[UILabel alloc]init];
    nameLB.textColor = [UIColor blackColor];
    nameLB.textAlignment = NSTextAlignmentCenter;
    nameLB.font = [UIFont boldSystemFontOfSize:20];
    [profileTextContainer addSubview:nameLB];
    self.nameLB = nameLB;
    
    //************* ProfileMSG UI ************
    UILabel *profileLB = [[UILabel alloc] init];
    profileLB.numberOfLines = 0;    //여러줄로 표시하기위해
    profileLB.lineBreakMode = NSLineBreakByWordWrapping; // 레이블의 텍스트를 줄바꿈하고 자르는데 사용
    [self addSubview:profileLB];
    self.profileLB = profileLB;
    
    
}
//모든 뷰의 레이아웃에 해당하는 행동읋 한다.
- (void)updateLayout
{
    const CGFloat MARGIN = 15;
    
    CGFloat offsetX = MARGIN;
    CGFloat offsetY = MARGIN;
    //프로필 이미지
    self.profileImgView.frame = CGRectMake(offsetX, offsetY, 100, 100);
    self.profileImgView.layer.cornerRadius = self.profileImgView.frame.size.width/2; //둥글게
    offsetX += self.profileImgView.frame.size.width;
    //텍스트 네임 부분
    self.profileTextContainer.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - offsetX - MARGIN , 100);
    //****텍스트컨테이너 Sub부분
    //self.titleLB
    //self.nameLB
    offsetX = MARGIN;
    
    offsetY += self.profileImgView.frame.size.height;
    //텍스트 디테일 부분
    self.profileLB.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - (MARGIN*2), self.frame.size.height - offsetY - MARGIN);
}

- (void)test
{
    self.backgroundColor = [UIColor blackColor];
    self.profileImgView.backgroundColor = [UIColor yellowColor];
    self.profileTextContainer.backgroundColor = [UIColor blueColor];
    self.profileLB.backgroundColor = [UIColor redColor];
}

- (void)setDataWithImgName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr
{
    self.profileImgView.image = [UIImage imageNamed:imgUrlStr];
    self.nameLB.text = nameStr;
    self.profileLB.text = msgStr;
}






@end
