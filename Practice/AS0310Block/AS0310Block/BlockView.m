//
//  BlockView.m
//  AS0310Block
//
//  Created by 박찬웅 on 2017. 3. 10..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "BlockView.h"



@interface BlockView()

@property IBOutlet UIButton *btn1;
@property IBOutlet UILabel *label1;

@property NSString*(^test)(void);

@end

@implementation BlockView

//- (void)changeText:(test)text
//{
//    self.test = text;
//}


-(void)changeText:(NSString *(^)(NSString *))test
{
    self.test = test;
}

-(IBAction)selector:(id)sender
{
    self.label1.text = self.test();
}


@end
