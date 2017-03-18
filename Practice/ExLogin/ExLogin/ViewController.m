//
//  ViewController.m
//  ExLogin
//
//  Created by 박찬웅 on 2017. 3. 15..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"
#import "SignUpViewController.h"
#import "Network.h"
#import "MainPageViewController.h"
@interface ViewController ()
<UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *signUp;
@property (weak, nonatomic) IBOutlet UITextField *tfId;
@property (weak, nonatomic) IBOutlet UITextField *tfPw;





@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signUpButton:(UIButton *)sender
{
    //UIStoryboard *story = [UIStoryboard storyboardWithName:@"SignUpViewController" bundle:nil];
    SignUpViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SignUpViewController"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.tag == 1)
    {
        [self.tfPw becomeFirstResponder];
    }
    else
    {
        [self.tfPw resignFirstResponder];
    }
    return YES;
}

- (IBAction)loginClick:(UIButton *)sender
{

    
    [self.tfId resignFirstResponder];
    [self.tfPw resignFirstResponder];
    
    Network *network = [[Network alloc]init];
    [network login:self.tfId.text password:self.tfPw.text];
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"MainPage" bundle:nil];
    MainPageViewController *mpv = [story instantiateViewControllerWithIdentifier:@"MainPageViewController"];
    [self presentViewController:mpv animated:YES completion:nil];
    
    
    /* 
        NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        
        NSURL *url = [NSURL URLWithString:[BASE_API stringByAppendingString:SIGN_IN]];
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
        
        NSString *userName = self.tfId.text;
        NSString *password = self.tfPw.text;
        
        NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password=%@",userName, password];
        
        request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
        request.HTTPMethod = @"POST";
        
        NSURLSessionUploadTask *task = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
            if(error != nil){
                
            } else {
                
                NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
                
                NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
                
                if(statusCode == 200) {
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        UIStoryboard *story = [UIStoryboard storyboardWithName:@"MainPage" bundle:nil];
                        MainPageViewController *mpv = [story instantiateViewControllerWithIdentifier:@"MainPageViewController"];
                        [self presentViewController:mpv animated:YES completion:nil];
                      //[self performSegueWithIdentifier:@"testSegue" sender:nil];
                    });
                    
                } else if(statusCode == 400) {
                    
                    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"에러" message:@"에럽니다" preferredStyle:UIAlertControllerStyleAlert];
                    
                    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
                   
                    [alert addAction:ok];
                    [self presentViewController:alert animated:YES completion:nil];
                    
                    NSString *errorMSG = [responsData objectForKey:@"non_field_errors"];
                    
                    NSLog(@"%@", errorMSG);
                }
            }
        }];
        [task resume];


        
        
        //        [DataCenter shared].saveData = [[NSUserDefaults alloc]init];
        //        [[DataCenter shared].saveData setObject:[NSString stringWithFormat:@"%@", self.tfId.text] forKey:@"id"];
        //        [[DataCenter shared].saveData setObject:[NSString stringWithFormat:@"%@", self.tfPw.text] forKey:@"pw"];
        
        //        NSLog(@"%@", [[DataCenter shared].saveData objectForKey:@"id"]);
        //        NSLog(@"%@", [[DataCenter shared].saveData objectForKey:@"pw"]);
//    }
//    else
//    {
//        NSLog(@"뭔가 문제가 있어");
//        
//    }
*/
}





@end
