//
//  DataCenter.h
//  TableViewExample
//
//  Created by youngmin joo on 2016. 6. 6..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)defaultData;

- (NSDictionary *)allAnimals;
- (NSArray *)sectionTitles;
- (NSInteger)sectionCount; //세션 카운터
- (NSString *)imageNameWithAnimal:(NSString *)animal;  //이미지 이름을 가져옴
@end
