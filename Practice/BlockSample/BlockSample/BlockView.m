//
//  BlockView.m
//  BlockSample
//
//  Created by youngmin joo on 2017. 3. 10..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "BlockView.h"



@interface BlockView()

@property (nonatomic, weak) IBOutlet UILabel * titleLB;
@property (nonatomic, weak) IBOutlet UIButton *btn;

@property (nonatomic) TextBlock textBlock;

@end

@implementation BlockView


- (void)changeTextAction:(TextBlock)text
{
    self.textBlock = text;
}

- (IBAction)btnAction:(id)sender
{
    self.titleLB.text = self.textBlock();
}

@end





