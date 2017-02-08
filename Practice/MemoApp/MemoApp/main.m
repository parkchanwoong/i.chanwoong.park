//
//  main.m
//  MemoApp
//
//  Created by 박찬웅 on 2017. 1. 25..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memo.h"
int main(int argc, const char * argv[]) {
    
    //객체생성
    Memo *memo = [[Memo alloc] init];
    
    //스트링 저장
    [memo saveString:@"azaaaa"];
    [memo saveString:@"azaaaa2"];
    //스트링 불러오기
    NSString *ttt = [memo loadAtIndex:0];
    NSLog(@"출력 %@",ttt);
    NSString *aaa = [memo loadAtIndex:1];
    NSLog(@"출력 %@",aaa);
    return 0;


}
