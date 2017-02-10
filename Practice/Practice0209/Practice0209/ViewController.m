//
//  ViewController.m
//  Practice0209
//
//  Created by 박찬웅 on 2017. 2. 9..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *array = @[@3,@2,@4,@1,@5];
    NSMutableArray *resultArray = [NSMutableArray arrayWithArray:array];
    [self bubble:resultArray];
    
}

-(void)bubble:(NSMutableArray *)sort
{
    NSNumber *num;
    for (NSUInteger i = 0; i < sort.count; i++) {
        for (NSUInteger j= 0; j < sort.count -i-1; j++) {
            if (sort[j] > sort[j+1])
            {
                num = sort[j];
                sort[j] = sort[j+1];
                sort[j+1] = num;
                
            }
        }
    }
    NSLog(@"%@",sort);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






























@end
/*
 NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@2,@3,@9,@4,@3, nil];
 
 NSMutableArray *resultArray = [[NSMutableArray alloc] init];
 //    NSNumber *num;
 for (NSUInteger i = 0 ; i<array.count ; i++) {
 for(NSUInteger j = 0 ; j<array.count-i-1 ; j++)
 
 if (array[j] < array[j+1]) {
 //                num = array[j];
 //                array[j] = array[j+1];
 //                array[i+1]=num;
 [resultArray addObject:array[j]];
 }else {
 [resultArray addObject:array[j+1]];
 
 }
 
 }
 
 
 NSLog(@"%@",resultArray);
 */

/*
 NSArray *array = @[@2,@3,@1,@7,@8,@9,@10];
 NSMutableArray *resultArray = [NSMutableArray arrayWithArray:array];
 
 for (NSUInteger i = 0; i < array.count; i++) {
 for (NSUInteger j = 0; j < array.count-1; j++) {
 
 NSUInteger firstNum = [[resultArray objectAtIndex:j] integerValue];
 NSUInteger secondNum = [[resultArray objectAtIndex:j+1] integerValue];
 
 if (firstNum > secondNum)
 
 {
 [resultArray replaceObjectAtIndex:j withObject:[NSString stringWithFormat:@"%ld",secondNum]];
 [resultArray replaceObjectAtIndex:j+1 withObject:[NSString stringWithFormat:@"%ld",firstNum]];
 }
 }
 }
 NSLog(@"%@",resultArray);
 
 }
 */

/*
 NSDictionary *dic = @{@"key0":@"value0",@"key1":@"value1",@"key2":@"value2"};
 
 for (NSString *num in dic) {
 NSString *str = [dic objectForKey:num];
 NSLog(@"%@",str);
 }
 */




/*
 UILabel *resultLB = [[UILabel alloc] initWithFrame:CGRectMake(40, 50, 200, 35)];
 [self.view addSubview:resultLB];
 
 //실행
 NSArray *list = [[NSArray alloc ] initWithObjects:@"1",@"2",@"3",@"4",@"5", nil];
 NSArray *list2 = @[@"1",@"2",@"3",@"4",@"5"];
 
 NSDictionary *dic = [[NSDictionary alloc] initWithObjects:@[@"joo",@"joo1"] forKeys:@[@"key1",@"key2"]];
 NSDictionary *dic2 = @{@"key0":@"value0",@"key1":@"value1",@"key2":@"value2"};
 
 for (NSInteger i = 0; i < list.count; i++) {
 NSString *num =  [list objectAtIndex:i];
 NSLog(@"%@",num);
 }
 
 for (NSString *num in list2) {
 NSLog(@"%@",num);
 }
 NSString *resultStr = @"";
 for (NSString *key in dic2) {
 NSString *str = [dic2 objectForKey:key];
 resultStr = [resultStr stringByAppendingString:[NSString stringWithFormat:@"%@|",str]];
 }
 
 resultLB.text = resultStr;
 */



/*
 NSArray *list = [[NSArray alloc] initWithObjects:@"1",@"1",@"3",@"3",@"6",@"7",@"8", nil] ;
 NSMutableArray *resultList = [[NSMutableArray alloc] init];
 
 for (NSString *i in list)
 {
 if (![resultList containsObject:i])
 {
 [resultList addObject:i];
 }
 }
 NSString *a = list[0];
 NSLog(@"%@",resultList);
 NSLog(@"%@",a);
 */

/*
 NSString *i = @"a";
 NSString *j = @"a";
 
 NSLog(@"%ld",[i compare:j]);
 NSLog(@"%ld",[j compare:i]);
 NSLog(@"%ld",[i compare:i]);
 
 
 
 NSArray *arr = @[@5,@3,@7,@1,@6,@9,@2];
 NSMutableArray *sortedList = [NSMutableArray arrayWithArray:arr];
 NSUInteger i;
 NSUInteger j;
 
 for (i = 0; i<arr.count; i++)
 {
 for ( j= 0; j<arr.count-i-1; j++)
 {
 NSInteger firstNum = [[sortedList objectAtIndex:j] integerValue];
 NSInteger secondNum = [[sortedList objectAtIndex:j+1] integerValue];
 
 if (firstNum > secondNum)
 {
 [sortedList replaceObjectAtIndex:j withObject:[NSString stringWithFormat:@"%ld",secondNum]];
 [sortedList replaceObjectAtIndex:j+1 withObject:[NSString stringWithFormat:@"%ld",firstNum]];
 }
 }
 }
 NSLog(@"%@",sortedList);
 */
