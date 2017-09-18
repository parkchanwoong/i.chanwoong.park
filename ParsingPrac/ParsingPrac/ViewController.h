//
//  ViewController.h
//  ParsingPrac
//
//  Created by 박찬웅 on 2017. 8. 29..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSXMLParserDelegate,UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *datalist;
    NSMutableDictionary *detailData;
    
    NSString *elementTemp;
    
    NSXMLParser *parser;
    
    BOOL blank;
}




@end

