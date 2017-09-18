//
//  ViewController.m
//  NetworkPractice
//
//  Created by 박찬웅 on 2017. 8. 29..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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


- (IBAction)downloadAction:(id)sender {
    self.imgView.image = nil;
    [self.downloadProgressView setProgress:0.0 animated:NO];
    [self.activityIndicatorView startAnimating];
    
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration
//                                                       delegate:self
//                                                  delegateQueue:[NSOperationQueue mainQueue]];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration
                                                          delegate:nil
                                                     delegateQueue:[NSOperationQueue mainQueue]];
    
//    downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iPhonewithswift2/master/sample.jpeg"]];
    downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iPhonewithswift2/master/sample.jpeg"] completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        self.imgView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:location]];
        NSLog(@"response = %@",response);
        NSLog(@"error = %@",error);
        [self.activityIndicatorView stopAnimating];
    }];
    
    [downloadTask resume];
}

//- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite
//{
//    float progress = (float)totalBytesWritten/(float)totalBytesExpectedToWrite;
//    [self.downloadProgressView setProgress:progress animated:YES];
//}
//
//- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location
//{
//    NSData *data = [NSData dataWithContentsOfURL:location];
//    self.imgView.image = [UIImage imageWithData:data];
//    [self.activityIndicatorView stopAnimating];
//    
//}

- (IBAction)suspendAction:(id)sender {
    [downloadTask suspend];
}

- (IBAction)resumeAction:(id)sender {
    [downloadTask resume];
}

- (IBAction)cancelAction:(id)sender {
    [downloadTask cancel];
}
@end
