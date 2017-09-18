//
//  ViewController.h
//  NetworkPractice
//
//  Created by 박찬웅 on 2017. 8. 29..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSURLSessionDownloadDelegate>{
    NSURLSessionTask *downloadTask;
}



@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;

@property (strong, nonatomic) IBOutlet UIProgressView *downloadProgressView;



- (IBAction)downloadAction:(id)sender;
- (IBAction)suspendAction:(id)sender;
- (IBAction)resumeAction:(id)sender;

- (IBAction)cancelAction:(id)sender;

@end

