//
//  Network.m
//  ExLogin
//
//  Created by 박찬웅 on 2017. 3. 16..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Network.h"
#import "DataCenter.h"
@implementation Network


- (void)login:(NSString *)username password:(NSString *)password
{
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:[BASE_API stringByAppendingString:LOG_IN]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    

    
    
    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password=%@",username, password];
    
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


- (void)signup:(NSString *)userName password1:(NSString *)password1 password2:(NSString *)password2 completionBlock:(CompetionBlock)block
{

    
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:[BASE_API stringByAppendingString:SIGN_UP]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];


    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password1=%@&password2=%@",userName, password1, password2];
    
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    NSURLSessionUploadTask *task = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
               NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
        NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        
        if(error != nil)
        {
             NSLog(@"ERROR : %@", error);
            
            NSLog(@"%@",responsData);
        }
        else
        {
            if(statusCode == 201)
            {
               block(YES);
                NSLog(@"블락 예쓰");
            }
            else if(statusCode == 400)
            {
           
               block(NO);
                NSLog(@"블락 노우");
                NSLog(@"%ld", (long)statusCode);
            }
        }
    }];
    [task resume];

}
/*
- (void)memberSignup:(MemberInfo *)info completionBlock:(CompetionBlock)block {
    
    NSMutableURLRequest *request = [self connectionRequestInfo:FCAPIServerMemberSignin];
    
    NSString *userInfo = [NSString stringWithFormat:@"username=%@&password1=%@&password2=%@", info.username, info.password, info.passwordCheck];
    
    request.HTTPBody   = [userInfo dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = _METHODPOST;
    
    NSURLSessionDataTask *dataTask = [self.session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
        NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
        
        if(error != nil) {
            
            NSLog(@"ERROR : %@", error);
        } else {
            if(statusCode == 201) {
                
                [[DataCenter sharedInstance] saveUserTokenInfo:[dic objectForKey:@"key"]];
                [self memberUserDetail:block];
                //                block(YES, dic);
            } else if(statusCode == 400) {
                
                block(NO, dic);
            }
        }
    }];
    
    [dataTask resume];
}
*/

@end
