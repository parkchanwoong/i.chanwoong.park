//
//  ViewController.m
//  ImageDownloadSamplePrac0315
//
//  Created by 박찬웅 on 2017. 3. 15..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate,UITableViewDelegate>


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    //[NSURL URLWithString:<#(nonnull NSString *)#>]
    //[NSURL URLWithString:<#(nonnull NSString *)#>]
    //[NSData dataWithContentsOfURL:[NSURL URLWithString:<#(nonnull NSString *)#>]]
    //[NSData dataWithContentsOfURL:[NSURL URLWithString:<#(nonnull NSString *)#>]]
//    self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSNmqsoxuz93Xbk4I1gjDQkMVoyL1uRT_wu576jwrNpvz54IMHA4w"]]];
    
    
    /*
    //session 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    
    //Request 객체 생성
    NSURL *url = [NSURL URLWithString:@"//"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    //data Data 생성
    NSString *userName = [[NSUserDefaults standardUserDefaults] objectForKey:@"uesrName"];
    NSString *device = @"iPhone6";
    NSString *noteDataString = [NSString stringWithFormat:@"userName=%@&device=%@",userName,device];
    //body data set
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    //post Task 요청
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        //응답에 대한 작업 처리
    }];
    [postDataTask resume];
    */
    
    NSURL *thumbnailURL = [NSURL URLWithString:@"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSNmqsoxuz93Xbk4I1gjDQkMVoyL1uRT_wu576jwrNpvz54IMHA4w"];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURLSessionTask *task = [session dataTaskWithURL:thumbnailURL completionHandler:^(NSData * _Nullable data,
                                                                                       NSURLResponse * _Nullable response,
                                                                                       NSError * _Nullable error)
    {
        if(data)
        {
            UIImage *image = [UIImage imageWithData:data];
            if(image)
            {
                dispatch_async(dispatch_get_main_queue(), ^{
                    
//                    self.imageView.image = image;
                });
            }
        }
    }];
    [task resume];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
