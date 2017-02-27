//
//  ViewController.m
//  Login
//
//  Created by 박찬웅 on 2017. 2. 7..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "LoginNextViewController.h"
#import "NewMemberViewController.h"
#import "DataCenter.h"
@interface ViewController ()
<UITextFieldDelegate,UIScrollViewDelegate>
@property UITextField *tfId;
@property UITextField *tfPw;
@property UIScrollView *scrollView;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //제목
    
    UILabel* login = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-30, self.view.frame.origin.y+100, self.view.frame.size.width/2, 20)];
    [login setText:@"login 화면"];
    login.textColor = [UIColor blueColor];
    //login.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:login];
    
    // 스크롤 뷰
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, login.frame.origin.y-20, self.view.frame.size.width, self.view.frame.size.height+200)];
    [self.scrollView setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * 1.3)];
    self.scrollView.delegate = self;
    [self.view addSubview:self.scrollView];

    //메인뷰
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.scrollView.frame.size.width, self.scrollView.frame.size.height + 60)];
    [self.scrollView addSubview:mainView];
    
    //라벨 로그인
    UILabel* loginId = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+80, self.view.frame.origin.y+260, 120, 30)];
    [loginId setText:@"Login : "];
    loginId.textColor = [UIColor blackColor];
    [self.scrollView addSubview:loginId];
    
    //라벨 패스워드
    UILabel* loginPassword = [[UILabel alloc] initWithFrame:CGRectMake(loginId.frame.origin.x, loginId.frame.origin.y+40, 120, 30)];
    [loginPassword setText:@"Password : "];
    loginPassword.textColor = [UIColor blackColor];
    [self.scrollView addSubview:loginPassword];
    
    //텍스트필드 아이디
    self.tfId = [[UITextField alloc] initWithFrame:CGRectMake(loginId.frame.origin.x+125, loginId.frame.origin.y, 120, 30)];
    self.tfId.placeholder = @"아이디 입력";
    self.tfId.textAlignment = NSTextAlignmentCenter;
    self.tfId.layer.borderWidth = 2;
    self.tfId.layer.borderColor = [UIColor blackColor].CGColor;
    //[self.tfId resignFirstResponder];
    self.tfId.delegate = self;
    
    [self.scrollView addSubview:self.tfId];
    
    //텍스트필드 비번
    self.tfPw = [[UITextField alloc] initWithFrame:CGRectMake(self.tfId.frame.origin.x,loginPassword.frame.origin.y , 120, 30)];
    self.tfPw.placeholder = @"비밀번호 입력";
    self.tfPw.textAlignment = NSTextAlignmentCenter;
    self.tfPw.layer.borderWidth = 2;
    self.tfPw.layer.borderColor = [UIColor blackColor].CGColor;
    [self.tfPw setSecureTextEntry:YES];
    //[self.tfPw resignFirstResponder];
    self.tfPw.delegate = self;
    
    [self.scrollView addSubview:self.tfPw];
    
    //버튼 bnt1 = 로그인  btn2 = 회원가입
    //UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(loginId.frame.origin.x, loginPassword.frame.origin.y+40, 100, 50)];
    [btn1 setTitle:@"로그인" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    btn1.layer.borderWidth = 2;
    btn1.layer.borderColor = [UIColor blackColor].CGColor;
    [btn1 addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchDown];
    [self.scrollView addSubview:btn1];
    
    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2+20, btn1.frame.origin.y, 100, 50)];
    [btn2 setTitle:@"회원가입" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor purpleColor] forState:UIControlStateSelected];
    [btn2 addTarget:self action:@selector(newMember:) forControlEvents:UIControlEventTouchDown];
    btn2.layer.borderWidth = 2;
    btn2.layer.borderColor = [UIColor blackColor].CGColor;
    [self.scrollView addSubview:btn2];
    
    
//    self.tfId.text = [DataCenter sharedInfo].loginId;
//    self.tfPw.text = [DataCenter sharedInfo].loginPw;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noti:) name:@"Noti" object:nil];
  
}
///////회원가입 버튼
- (void)newMember:(UIButton *)sender
{
    NewMemberViewController *newMVC = [[NewMemberViewController alloc]init];
    [newMVC setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    
    [self.navigationController pushViewController:newMVC animated:YES];
    
    
}

- (void)noti:(NSNotification *)noti
{
    NSLog(@"%@",noti.object);
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

/////로그인버튼
- (void)login:(UITextField *)sender

{
    LoginNextViewController *loginNext = [[LoginNextViewController alloc]initWithNibName:@"LoginNextViewController" bundle:nil];
  
    if ([self.tfId.text isEqual:[DataCenter sharedInfo].loginId] && [self.tfPw.text isEqual:[DataCenter sharedInfo].loginPw])
    {
        
        NSLog(@"로그인 성공");
        [loginNext setModalTransitionStyle:UIModalTransitionStylePartialCurl];
        
        [self presentViewController:loginNext animated:YES completion:nil];
        
// 실수      [[NSUserDefaults standardUserDefaults] setObject:self.tfId.text forKey:@"userID"];
// 실수      [[NSUserDefaults standardUserDefaults] setObject:self.tfPw.text forKey:@"userPW"];
        
    }
    else
    {
        NSLog(@"로그인 실패");
    }
    
    
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    //NSLog(@"asd");
    [self.scrollView setContentOffset:CGPointMake(0, 80) animated:YES];
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    //NSLog(@"asda");
    [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)text
{
    if(self.tfId == text)
        [self.tfPw becomeFirstResponder];
    else{
        [self.tfPw resignFirstResponder];
    }
    //[self.tfPw resignFirstResponder];
    return YES;
    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
