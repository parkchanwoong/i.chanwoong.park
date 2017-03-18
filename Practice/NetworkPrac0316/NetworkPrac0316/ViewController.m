//
//  ViewController.m
//  NetworkPrac0316
//
//  Created by 박찬웅 on 2017. 3. 16..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:@"https://fc-ios.lhy.kr/api/member/login/"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSString *userName = @"a";
    NSString *password = @"1qa2ws3ed";
    
    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password=%@",userName, password];
    
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    NSURLSessionUploadTask *task = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if(error == nil){
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"%@",responsData);
        }
    }];
    [task resume];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
