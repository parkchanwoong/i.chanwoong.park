//
//  DataCenter.h
//  TableViewExample
//
//  Created by youngmin joo on 2016. 6. 6..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject
//싱글톤 메소드 >> 지금은 무시하세요
+ (instancetype)defaultData;

//각 메소드들이 어떤 행동을 하는지 봐주세요

//모든 데이터 가져오기
- (NSDictionary *)allAnimals;

//섹션의 타이틀을 array로 가져오기
- (NSArray *)sectionTitles;

//섹션의 카운트를 가져오기
- (NSInteger)numberOfSection;

//섹션에 따른 Row 카운트 가져오기
- (NSInteger)numberOfRowInSection:(NSInteger)section;

//섹션에 따른 Row 카운트 가져오기
- (NSArray *)rowDatasOfSection:(NSInteger)section;

//이미지 이름 가져오기
- (NSString *)imageNameWithAnimal:(NSString *)animal;

@end
