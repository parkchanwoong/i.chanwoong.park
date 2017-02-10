//
//  SelectionSort.m
//  TestSort
//
//  Created by youngmin joo on 2016. 10. 7..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import "SelectionSort.h"



@implementation SelectionSort


- (NSArray *)sort:(NSArray *)list
{
    NSMutableArray *unSortedList = [[NSMutableArray alloc] initWithArray:list];
    //측정위한 변수
    self.totalSwitchCount = 0;
    self.totalCompareCount = 0;
    
    //리스트의 시작부터 끝까지 확인
    for (NSInteger i =0; i < unSortedList.count; i++) {
        //최소값 구하기
        NSInteger minValue = [unSortedList[i] integerValue];
        NSInteger minIndex = i;
        //i 다음번째의 숫자중 가장 작은수를 찾아내기
        for (NSInteger j = i; j < unSortedList.count; j++) {
            NSInteger compareValue = [unSortedList[j] integerValue];
            
            self.totalCompareCount++;
            if (minValue > compareValue) {
                minValue = compareValue;
                minIndex = j;
            }
            
        }
        //리스트의 데이터 교환
        //i번째는 minIndex로, minIndex는 i번째로
        if (i != minIndex) {
            [unSortedList exchangeObjectAtIndex:i withObjectAtIndex:minIndex];
            self.totalSwitchCount++;
        }
    }
    return unSortedList;
}

@end
