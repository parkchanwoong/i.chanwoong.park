//
//  CoverFlow.m
//  TestCoverFlow0324
//
//  Created by 박찬웅 on 2017. 3. 24..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "CoverFlow.h"

@implementation CoverFlow

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray *attributesInRect = [super layoutAttributesForElementsInRect:rect];
    
    NSMutableArray *resultAttributeArray = [[NSMutableArray alloc] init];
    
    for (UICollectionViewLayoutAttributes *attribute in attributesInRect) {
        
        UICollectionViewLayoutAttributes *copyAttribute = [attribute copy];
        
        //
        
        CGFloat collectionViewXCenter = self.collectionView.contentOffset.x + (self.collectionView.bounds.size.width / 2.0f);
        
        CGFloat maxDistance = self.itemSize.width + self.minimumLineSpacing;
        
        CGFloat distance = MIN(fabs(attribute.center.x - collectionViewXCenter), maxDistance);
        
        CGFloat ratio = (maxDistance - distance) / maxDistance;
        
        CGFloat itemScale = 1.0f + (0.5f * ratio);
        CGFloat itemAlpha = 0.5f + (0.5f * ratio);
        
        copyAttribute.alpha = itemAlpha;
        copyAttribute.transform3D = CATransform3DScale(CATransform3DIdentity, itemScale, itemScale, 1);
        copyAttribute.zIndex = 10 * itemAlpha;
        
        
        
        [resultAttributeArray addObject:copyAttribute];
    }
    
    return resultAttributeArray;
}



- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds
{
    return YES;
}

//스크롤하면 호출 ... 가운데에 정지
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity
{
    CGFloat actualXOffset = proposedContentOffset.x + (self.collectionView.bounds.size.width / 2.0f);
    
    
    NSArray *attributeArray = [self layoutAttributesForElementsInRect:self.collectionView.bounds];
    
    attributeArray = [attributeArray sortedArrayUsingComparator:^NSComparisonResult(UICollectionViewLayoutAttributes*  _Nonnull obj1, UICollectionViewLayoutAttributes*  _Nonnull obj2) {
        
        if(fabs(obj1.center.x - actualXOffset) > fabs(obj2.center.x - actualXOffset))
        {
            return NSOrderedDescending;
        }
        else if (fabs(obj1.center.x - actualXOffset) < fabs(obj2.center.x - actualXOffset))
        {
            return NSOrderedAscending;
        }
        else
        {
            return  NSOrderedSame;
        }
    }];
    
    CGFloat resultOffsetvalue = ((UICollectionViewLayoutAttributes *)attributeArray.firstObject).center.x - (self.collectionView.bounds.size.width / 2.0f);
    
    CGPoint resultPoint = CGPointMake(resultOffsetvalue, 0);
    
    return resultPoint;
}




@end
