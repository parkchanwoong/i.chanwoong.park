//
//  ViewController.m
//  CollectionViewPrac0328
//
//  Created by 박찬웅 on 2017. 3. 28..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableViewCell.h"
#import "CollectionViewDataSource.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property CollectionViewDataSource *dataSourceForFirstCollectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *collDataArr = @[@"1", @"2",@"3",@"4",@"5",@"6"];
    self.dataSourceForFirstCollectionView = [[CollectionViewDataSource alloc] initWithDataArray:collDataArr];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 2;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SimpleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"firstCell" forIndexPath:indexPath];
    
    cell.collectionView.delegate = self;
    cell.collectionView.dataSource = self.dataSourceForFirstCollectionView;
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 180;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(180, 180);
}

@end
