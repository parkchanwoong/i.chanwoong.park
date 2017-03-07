//
//  AlertControllerCenter.m
//  AS0306
//
//  Created by 박찬웅 on 2017. 3. 6..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "AlertControllerCenter.h"

@interface AlertControllerCenter ()
//@property UIAlertController *alertController;
@end

@implementation AlertControllerCenter

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.alertController = [UIAlertController alertControllerWithTitle:@"알럿이다!" message:@"알럿 메시지다!" preferredStyle:UIAlertControllerStyleAlert];
        
        //AlertController 액션버튼객체 생성
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"클릭했음");
            
        }];
        
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:nil];
        
        [self.alertController addAction:okAction];
        [self.alertController addAction:cancelAction];

    }
    return self;
}


@end
