//
//  NewMemberViewController.m
//  Login
//
//  Created by 박찬웅 on 2017. 2. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "NewMemberViewController.h"
#import "DataCenter.h"
@interface NewMemberViewController ()
<UITextFieldDelegate,UIScrollViewDelegate>
@property UILabel *label1;
@property UIScrollView *scrollview;
@property UITextField *tfId;
@property UITextField *tfPw;
@property UITextField *tfPwRe;
@property UIButton *btn1;
@property UIView *toolbar;
@property BOOL toolBarUp;

@end

@implementation NewMemberViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.toolBarUp = NO;
    
    // Do any additional setup after loading the view from its nib.
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-30,self.view.frame.origin.y+100, self.view.frame.size.width/2, 20)];
    [label1 setText:@"Signup Page"];
    //label1.text = @"Signup Page";
    label1.textColor = [UIColor blueColor];
    //label1.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label1];
    
    //스크롤 뷰
    self.scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y + 100, self.view.frame.size.width, self.view.frame.size.height)];
    [self.scrollview setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height / 2)];
    self.scrollview.delegate = self;
    [self.view addSubview:self.scrollview];
    
    
    //라벨 아이디
    UILabel *labelId = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y+260, 120, 30)];
    [labelId setText:@"ID : "];
    labelId.textColor = [UIColor blackColor];
    labelId.textAlignment = NSTextAlignmentRight;
    [self.scrollview addSubview:labelId];
    
    //라벨 비번
    UILabel *labelPw = [[UILabel alloc]initWithFrame:CGRectMake(labelId.frame.origin.x, labelId.frame.origin.y+40, 120, 30)];
    [labelPw setText:@"PW : "];
    labelPw.textColor = [UIColor blackColor];
    labelPw.textAlignment = NSTextAlignmentRight;
    [self.scrollview addSubview:labelPw];
    
    //비번 한번더
    UILabel *labelPwRe = [[UILabel alloc]initWithFrame:CGRectMake(labelPw.frame.origin.x, labelPw.frame.origin.y+40, 120, 30)];
    [labelPwRe setText:@"RE : "];
    labelPwRe.textColor = [UIColor blackColor];
    labelPwRe.textAlignment = NSTextAlignmentRight;
    [self.scrollview addSubview:labelPwRe];
    
    
    //*****텍스트 필드 ******//
    
    //아이디
    self.tfId = [[UITextField alloc]initWithFrame:CGRectMake(labelId.frame.origin.x+125, labelId.frame.origin.y, 120, 30)];
    self.tfId.placeholder = @"아이디 입력";
    self.tfId.textAlignment = NSTextAlignmentCenter;
    self.tfId.layer.borderWidth = 2;
    self.tfId.layer.borderColor = [UIColor grayColor].CGColor;
    self.tfId.delegate = self;
    [self.scrollview addSubview:self.tfId];
    
    //비번
    self.tfPw = [[UITextField alloc]initWithFrame:CGRectMake(self.tfId.frame.origin.x,labelPw.frame.origin.y , 120, 30)];
    self.tfPw.placeholder = @"비번 입력";
    self.tfPw.textAlignment = NSTextAlignmentCenter;
    self.tfPw.layer.borderWidth = 2;
    self.tfPw.layer.borderColor = [UIColor grayColor].CGColor;
    self.tfPw.delegate = self;
    [self.tfPw setSecureTextEntry:YES];
    [self.scrollview addSubview:self.tfPw];
    
    //한번 더
    self.tfPwRe = [[UITextField alloc] initWithFrame:CGRectMake(self.tfPw.frame.origin.x, labelPwRe.frame.origin.y, 120, 30)];
    self.tfPwRe.placeholder =@"한번 더 입력";
    self.tfPwRe.textAlignment = NSTextAlignmentCenter;
    self.tfPwRe.layer.borderColor = [UIColor grayColor].CGColor;
    self.tfPwRe.layer.borderWidth = 2;
    self.tfPwRe.delegate = self;
    [self.tfPwRe setSecureTextEntry:YES];
    [self.scrollview addSubview:self.tfPwRe];
    
    
    //회원가입 완료 버튼
    self.btn1 = [[UIButton alloc]initWithFrame:CGRectMake(label1.frame.origin.x, self.tfPwRe.frame.origin.y + 60, 70, 30)];
    [self.btn1 setTitle:@"회원가입" forState:UIControlStateNormal];
    self.btn1.layer.borderWidth = 2;
    self.btn1.layer.borderColor = [UIColor blackColor].CGColor;
    [self.btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn1 setTitleColor:[UIColor purpleColor] forState:UIControlStateSelected];
    [self.btn1 addTarget:self action:@selector(okNewMember:) forControlEvents:UIControlEventTouchDown];
    [self.scrollview addSubview:self.btn1];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Noti" object:@"박찬웅"];
    
    
    ///////////////////////////   노티로 키보드만큼 올리기   //////////////////////////
    
    
    UIView *toolbar = [[UIView alloc]initWithFrame:CGRectMake (0, self.view.frame.size.height - 40  , self.view.frame.size.width, 50)];
    [toolbar setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:toolbar];
    self.toolbar = toolbar;
    
    
   
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardUp:) name:UIKeyboardWillShowNotification object:nil];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardDown:) name:UIKeyboardWillHideNotification object:nil];
    
    [DataCenter sharedInfo].dic = @{@"":@""};
}

- (void)keyboardUp:(NSNotification *)sender
{
    CGSize keyboardSize = [[sender.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect originFrame = self.toolbar.frame;
    if (self.toolBarUp == NO) {
        self.toolbar.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y - keyboardSize.height, originFrame.size.width, originFrame.size.height);
    }
    
    
    self.toolBarUp = YES;

}

- (void)keyboardDown:(NSNotification *)sender
{
    CGSize keyboardSize = [[sender.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect originFrame = self.toolbar.frame;
    if (self.toolBarUp == YES) {
        self.toolbar.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y + keyboardSize.height, originFrame.size.width, originFrame.size.height);
    }
    self.toolBarUp = NO;

}

    //////////////////////////////   여기까지   //////////////////////


//회원가입 완료
- (void)okNewMember:(UIButton *)sender
{
    if(self.tfPw.text == self.tfPwRe.text)
    {
        
        [DataCenter sharedInfo].loginId = self.tfId.text;
        [DataCenter sharedInfo].loginPw = self.tfPw.text;
//        [DataCenter sharedInfo].loginPWRe = self.tfPwRe.text;
        [[DataCenter sharedInfo] saveData];
        NSLog(@"회원 가입 완료");
        
    [self.navigationController popViewControllerAnimated:YES];
        
    }
    else
    {
        NSLog(@"다시 입력하세요");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    //NSLog(@"aa");
    [self.scrollview setContentOffset:CGPointMake(0, 130) animated:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    //NSLog(@"bb");
    [self.scrollview setContentOffset:CGPointMake(0, 0) animated:YES];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (self.tfId == textField )
    {
        [self.tfPw becomeFirstResponder];
    }
    else if(self.tfPw == textField)
    {
        [self.tfPwRe becomeFirstResponder];
    }
    else
    {
        [self.tfPwRe resignFirstResponder];
        
    }
    return YES;
}

- (void)postMethod
{
    [[NSNotificationCenter defaultCenter]postNotificationName:@"NotificationKey" object:@"wing"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
