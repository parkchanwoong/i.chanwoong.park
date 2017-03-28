//
//  SBSignUpViewController.m
//  SignUpEmail
//
//  Created by 박찬웅 on 2017. 3. 27..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "SBSignUpViewController.h"
#import <AFNetworking/AFNetworking.h>
#import "SBLoginViewController.h"

@interface SBSignUpViewController()
@property (strong, nonatomic) IBOutlet UITextField *IDTextField;
@property (strong, nonatomic) IBOutlet UITextField *PasswordTextField;
@property (strong, nonatomic) IBOutlet UITextField *RePasswordTextField;

@end

@implementation SBSignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (BOOL)checkEmail:(NSString *)email CheckPasswordEqualsPassword1:(NSString *)password
         password2:(NSString *)password2//이메일 형식인지 확인하기~

{
    
    const char *tmp = [email cStringUsingEncoding:NSUTF8StringEncoding];
    
    if (email.length != strlen(tmp))
        
    {
        NSLog(@"한글이 포함되어있다");
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"한글이 포함되어 있습니다." message:nil preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:noAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        return NO;
    }
    
    NSString *check = @"([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\\.[0-9a-zA-Z_-]+){1,2}";
    
    NSRange match = [email rangeOfString:check options:NSRegularExpressionSearch];
    
    if (NSNotFound == match.location)
        
    {
        NSLog(@"실패");
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"이메일 형식이 아닙니다" message:nil preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:noAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        return NO;
        
    }  else if (password == password2) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"회원가입이 완료되었습니다." message:nil preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
       
            [self.navigationController popViewControllerAnimated:YES];
            [self saveData];
        }];
        
        
        [alert addAction:okAction];
        
        
        [self presentViewController:alert animated:YES completion:nil];
        
//        SBSignUpViewController *view = [SBSignUpViewController new];
//        [self presentViewController:view animated:YES completion:^{
//            [self saveData];
//        }];
        
        
    } else {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"회원가입이 실패하였습니다." message:nil preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:noAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        
    }
    
    return YES;
}


   - (IBAction)SignUpButton:(UIButton *)sender
{

    [self checkEmail:self.IDTextField.text CheckPasswordEqualsPassword1:self.PasswordTextField.text password2:self.RePasswordTextField.text];
    
}

- (void)saveData
{
    [[NSUserDefaults standardUserDefaults] setObject:self.IDTextField.text forKey:@"ID"];
    [[NSUserDefaults standardUserDefaults] setObject:self.PasswordTextField.text forKey:@"PW"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}




/*  이메일 형식 체크 정규식
- (BOOL)checkEmail:(NSString *)email

{
    
    const char *tmp = [email cStringUsingEncoding:NSUTF8StringEncoding];
    
    if (email.length != strlen(tmp))
        
    {
        
        return NO;
        
    }
    
    
    
    NSString *check = @"([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\\.[0-9a-zA-Z_-]+){1,2}";
    
    NSRange match = [email rangeOfString:check options:NSRegularExpressionSearch];
    
    if (NSNotFound == match.location)
        
    {
        
        return NO;
        
    }
    
    return YES;
    
}
*/










@end
