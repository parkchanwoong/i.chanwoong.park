//
//  BlockView.h
//  AS0310Block
//
//  Created by 박찬웅 on 2017. 3. 10..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>
//별칭을 이용
//typedef NSString *(^test)(void);

@interface BlockView : UIView

//- (void)changeText:(test)text;

-(void)changeText:(NSString*(^)(NSString *))text;
@end
