//
//  DataCenter.m
//  TableViewExample
//
//  Created by youngmin joo on 2016. 6. 6..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter()

@property (nonatomic,strong) NSDictionary *animals;

@end

@implementation DataCenter


///////////////////////////////Nomal Method//////////////////////////////////////

- (NSDictionary *)allAnimals
{
    return self.animals;
}

- (NSArray *)sectionTitles
{
    return self.animals.allKeys;
}

- (NSInteger)numberOfSection
{
    return self.animals.count;
}

- (NSInteger)numberOfRowInSection:(NSInteger)section
{
    NSString *sectionKey = [self.animals.allKeys objectAtIndex:section];
    NSArray *allAnimalPerSection = [self.animals objectForKey:sectionKey];
    return allAnimalPerSection.count;
}

- (NSArray *)rowDatasOfSection:(NSInteger)section
{
    NSString *sectionKey = [self.animals.allKeys objectAtIndex:section];
    NSArray *allAnimalPerSection = [self.animals objectForKey:sectionKey];
    return allAnimalPerSection;
}

- (NSString *)imageNameWithAnimal:(NSString *)animal
{
    //스페이스를( ) 언더바로 변경 (_)
    NSString *imageFilename = [[animal lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    //파일 확장자 스트링 추가
    imageFilename = [imageFilename stringByAppendingString:@".jpg"];
    
    return imageFilename;
}


///////////////////////////////Init Method//////////////////////////////////////
//싱글턴 객체 만들기 >> 지금 고민하지 마세요!!
+ (instancetype)defaultData
{
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
        
    });
    
    return dataCenter;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setAnimalData];
    }
    return self;
}

- (void)setAnimalData
{
    //animals = dictionary
    self.animals = @{@"B" : @[@"Bear", @"Black Swan", @"Buffalo"],
                     @"C" : @[@"Camel", @"Cockatoo"],
                     @"D" : @[@"Dog", @"Donkey"],
                     @"E" : @[@"Emu"],
                     @"G" : @[@"Giraffe", @"Greater Rhea"],
                     @"H" : @[@"Hippopotamus", @"Horse"],
                     @"K" : @[@"Koala"],
                     @"L" : @[@"Lion", @"Llama"],
                     @"M" : @[@"Manatus", @"Meerkat"],
                     @"P" : @[@"Panda", @"Peacock", @"Pig", @"Platypus", @"Polar Bear"],
                     @"R" : @[@"Rhinoceros"],
                     @"S" : @[@"Seagull"],
                     @"T" : @[@"Tasmania Devil"],
                     @"W" : @[@"Whale", @"Whale Shark", @"Wombat"]};
}


@end
