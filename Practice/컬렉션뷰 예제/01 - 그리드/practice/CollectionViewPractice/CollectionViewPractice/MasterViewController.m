//
//  MasterViewController.m
//  CollectionViewPractice
//
//  Created by Dabu on 2017. 3. 19..
//  Copyright © 2017년 Dabu. All rights reserved.
//

#import "MasterViewController.h"
#import "ParkCell.h"
#import "DataSource.h"
#import "DetailViewController.h"

@interface MasterViewController ()
<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;
@property (weak, nonatomic) IBOutlet UICollectionView *mainCollectionView;

@property DataSource *source;


@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.source = [[DataSource alloc] init];
    
}

- (void)viewDidLayoutSubviews
{
    //아이템의 간격 10 왼쪽 10 오른쪽 10
    CGFloat itemWidth = (self.mainCollectionView.frame.size.width) / 3.0f;
    //    CGFloat itemHeight = self.mainCollectionView.frame.size.height;
    //사이즈는 아이템의 Width
    self.layout.itemSize = CGSizeMake(itemWidth, itemWidth);
    //상 좌 하 우
    //    self.layout.sectionInset = UIEdgeInsetsMake(0, 10, 0, 10);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *nextVC = segue.destinationViewController;
    nextVC.parkData = sender;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    ParkData *data = [self.source parkDataAtIndexPath:indexPath];
    
    [self performSegueWithIdentifier:@"DetailSegue" sender:data];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.source numberOfItems];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ParkCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ParkCell" forIndexPath:indexPath];
    [cell inputParkData:[self.source parkDataAtIndexPath:indexPath]];
    
    return cell;
}
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//}
@end
