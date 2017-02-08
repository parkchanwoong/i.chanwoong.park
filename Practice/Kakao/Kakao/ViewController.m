//
//  ViewController.m
//  Kakao
//
//  Created by 박찬웅 on 2017. 2. 6..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor yellowColor];
    //라이언 상품
    UIImageView *ryan = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y+30, self.view.frame.size.width/2, 150)];
    ryan.backgroundColor = [UIColor grayColor];
    [self.view addSubview:ryan];
    [ryan setImage:[UIImage imageNamed:@"Ryan.png"]];
    ryan.layer.borderWidth = 2;
    ryan.layer.borderColor = [UIColor grayColor].CGColor;
    
    //라이언 가격
    UILabel *ryanPrice = [[UILabel alloc] initWithFrame:CGRectMake(ryan.frame.origin.x, ryan.frame.origin.y+150, ryan.frame.size.width, ryan.frame.size.height/5)];
    ryanPrice.text =@"10,000원";
    ryanPrice.font = [UIFont systemFontOfSize:20];
    ryanPrice.textAlignment = NSTextAlignmentCenter;
    ryanPrice.backgroundColor =[UIColor brownColor];
    ryanPrice.layer.borderWidth = 2;
    ryanPrice.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:ryanPrice];
    
    //무지 상품
    UIImageView *muzicon = [[UIImageView alloc] initWithFrame:CGRectMake(ryan.frame.size.width, ryan.frame.origin.y, self.view.frame.size.width/2, 150)];
    muzicon.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:muzicon];
    [muzicon setImage:[UIImage imageNamed:@"MuziCon.jpg"]];
    muzicon.layer.borderWidth = 2;
    muzicon.layer.borderColor = [UIColor grayColor].CGColor;
    
    //무지콘 가격
    UILabel *muziconPrice = [[UILabel alloc]initWithFrame:CGRectMake(muzicon.frame.origin.x, muzicon.frame.origin.y+150, muzicon.frame.size.width, muzicon.frame.size.height/5)];
    muziconPrice.text =@"15,000원";
    muziconPrice.font = [UIFont systemFontOfSize:20];
    muziconPrice.textAlignment = NSTextAlignmentCenter;
    muziconPrice.backgroundColor =[UIColor brownColor];
    muziconPrice.layer.borderWidth = 2;
    muziconPrice.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:muziconPrice];
    
    //어피치 상품
    UIImageView *apeach = [[UIImageView alloc] initWithFrame:CGRectMake(ryan.frame.origin.x, ryanPrice.frame.origin.y+30, self.view.frame.size.width/2, 150)];
    
    [self.view addSubview:apeach];
    [apeach setImage:[UIImage imageNamed:@"Apeach.jpg"]];
    apeach.layer.borderWidth = 2;
    apeach.layer.borderColor = [UIColor grayColor].CGColor;
    
    //어피치 가격
    UILabel *apeachPrice = [[UILabel alloc] initWithFrame:CGRectMake(apeach.frame.origin.x, apeach.frame.origin.y+150, apeach.frame.size.width, apeach.frame.size.height/5)];
    apeachPrice.text = @"17,000원";
    apeachPrice.font = [UIFont systemFontOfSize:20];
    apeachPrice.textAlignment = NSTextAlignmentCenter;
    apeachPrice.backgroundColor =[UIColor brownColor];
    apeachPrice.layer.borderWidth = 2;
    apeachPrice.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:apeachPrice];
    
    
    //프로도 네오 상품
    UIImageView *frodoneo = [[UIImageView alloc] initWithFrame:CGRectMake(muzicon.frame.origin.x, apeach.frame.origin.y, self.view.frame.size.width/2, 150)];
    [self.view addSubview:frodoneo];
    [frodoneo setImage:[UIImage imageNamed:@"FrodoNeo.jpg"]];
    frodoneo.layer.borderWidth = 2;
    frodoneo.layer.borderColor = [UIColor grayColor].CGColor;
   
    //프로도 네오 가격
    UILabel *frodoneoPrice = [[UILabel alloc] initWithFrame:CGRectMake(frodoneo.frame.origin.x, frodoneo.frame.origin.y+150, frodoneo.frame.size.width, frodoneo.frame.size.height/5)];
    frodoneoPrice.text = @"20,000원";
    frodoneoPrice.font = [UIFont systemFontOfSize:20];
    frodoneoPrice.textAlignment = NSTextAlignmentCenter;
    frodoneoPrice.backgroundColor =[UIColor brownColor];
    frodoneoPrice.layer.borderWidth = 2;
    frodoneoPrice.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:frodoneoPrice];
    
    //튜브 상품
    UIImageView *tube = [[UIImageView alloc] initWithFrame:CGRectMake(ryan.frame.origin.x, apeach.frame.origin.y+180, self.view.frame.size.width/2, 150)];
    [self.view addSubview:tube];
    [tube setImage:[UIImage imageNamed:@"Tube.jpg"]];
    tube.layer.borderWidth = 2;
    tube.layer.borderColor = [UIColor grayColor].CGColor;
    
    //튜브 가격
    UILabel *tubePrice = [[UILabel alloc] initWithFrame:CGRectMake(tube.frame.origin.x, tube.frame.origin.y+150, tube.frame.size.width, tube.frame.size.height/5)];
    tubePrice.text = @"10,000원";
    tubePrice.font = [UIFont systemFontOfSize:20];
    tubePrice.textAlignment = NSTextAlignmentCenter;
    tubePrice.backgroundColor =[UIColor brownColor];
    tubePrice.layer.borderWidth = 2;
    tubePrice.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:tubePrice];
    
    //제이지 상품
    UIImageView *jayg = [[UIImageView alloc] initWithFrame:CGRectMake(frodoneo.frame.origin.x, tube.frame.origin.y, self.view.frame.size.width/2, 150)];
    [self.view addSubview:jayg];
    [jayg setImage:[UIImage imageNamed:@"JayG.jpg"]];
    jayg.layer.borderWidth = 2;
    jayg.layer.borderColor = [UIColor grayColor].CGColor;
    
    //제이지 가격
    UILabel *jaygPrice = [[UILabel alloc] initWithFrame:CGRectMake(jayg.frame.origin.x, jayg.frame.origin.y+150, jayg.frame.size.width, jayg.frame.size.height/5)];
    jaygPrice.text = @"9,000원";
    jaygPrice.font = [UIFont systemFontOfSize:20];
    jaygPrice.textAlignment = NSTextAlignmentCenter;
    jaygPrice.backgroundColor =[UIColor brownColor];
    jaygPrice.layer.borderWidth = 2;
    jaygPrice.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:jaygPrice];
    
    //전광판
    UILabel *price = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, tubePrice.frame.origin.y+30, self.view.frame.size.width, 40)];
    price.backgroundColor = [UIColor whiteColor];
    
    price.text = @"0원";
    price.font = [UIFont systemFontOfSize:30];
    price.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:price];
    
    //돈 투입
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, price.frame.origin.y+40, self.view.frame.size.width/2, 30)];
    [btn1 setTitle:@"5,000원 넣기" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(bigPrice:) forControlEvents:UIControlEventTouchDown];
    btn1.backgroundColor = [UIColor orangeColor];
    btn1.layer.borderWidth = 2;
    btn1.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:btn1];
    
    
    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(btn1.frame.size.width, btn1.frame.origin.y, self.view.frame.size.width/2, 30)];
    [btn2 setTitle:@"1,000원 넣기" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(smallPrice:) forControlEvents:UIControlEventTouchDown];
    btn2.backgroundColor = [UIColor orangeColor];
    btn2.layer.borderWidth = 2;
    btn2.layer.borderColor = [UIColor grayColor].CGColor;
    [self.view addSubview:btn2];
}

- (void)bigPrice:(UILabel *)big;
{
    
}

- (void)smallPrice:(UILabel *)small
{

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


@end
