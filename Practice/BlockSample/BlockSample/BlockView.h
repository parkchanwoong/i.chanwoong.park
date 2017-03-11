//
//  BlockView.h
//  BlockSample
//
//  Created by youngmin joo on 2017. 3. 10..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NSString *(^TextBlock)(void);

//@protocol BlockViewDelegate;
@interface BlockView : UIView

- (void)changeTextAction:(TextBlock)text;

//@property (nonatomic, weak) id<BlockViewDelegate> delegate;

@end


//@protocol BlockViewDelegate <NSObject>
//
//- (NSString *)didSelectBtnOnText;
//
//@end
