//
//  SecondViewController.m
//  CollectionViewPrac0323
//
//  Created by 박찬웅 on 2017. 3. 23..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "SecondViewController.h"

#define VIEW_COUNT 10
#define WIDTH_VIEW 250
#define HEIGHT_VIEW 180




@interface SecondViewController ()
<UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView *scrollView;


@end

@implementation SecondViewController
{
     UIPageControl *pageControl;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _scrollView = [[UIScrollView alloc] init];
    _scrollView.delegate = self;
    _scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    _scrollView.contentSize = CGSizeMake(WIDTH_VIEW*VIEW_COUNT, HEIGHT_VIEW);
    _scrollView.pagingEnabled = YES;
    [self.view addSubview:_scrollView];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_scrollView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0f
                                                           constant:0.0f]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[_scrollView(width)]"
                                                                      options:0
                                                                      metrics:@{@"width":@(WIDTH_VIEW)}
                                                                        views:NSDictionaryOfVariableBindings(_scrollView)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50-[_scrollView(height)]"
                                                                      options:0
                                                                      metrics:@{@"height":@(HEIGHT_VIEW)}
                                                                        views:NSDictionaryOfVariableBindings(_scrollView)]];
    
    pageControl = [[UIPageControl alloc] init];
    pageControl.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:pageControl];
    pageControl.numberOfPages = VIEW_COUNT;
    pageControl.currentPage = 0;
    pageControl.currentPageIndicatorTintColor = [UIColor redColor];
    pageControl.pageIndicatorTintColor = [UIColor grayColor];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_scrollView]-5-[pageControl(15)]"
                                                                      options:NSLayoutFormatAlignAllCenterX
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(_scrollView,pageControl)]];
    
    
    NSArray *colorList = @[[UIColor redColor],[UIColor orangeColor],[UIColor yellowColor],[UIColor greenColor],[UIColor blueColor]];
    for (NSInteger index = 0; index<VIEW_COUNT; index++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(index*WIDTH_VIEW, 0, WIDTH_VIEW, HEIGHT_VIEW)];
        view.backgroundColor = [colorList objectAtIndex:index%colorList.count];
        [_scrollView addSubview:view];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSInteger currentOffset = scrollView.contentOffset.x;
    NSInteger index = currentOffset / WIDTH_VIEW;
    
    //페이징 스크롤이 완전히 끝나야 페이지 인덱스가 바뀜
    if (currentOffset % WIDTH_VIEW == 0) {
        pageControl.currentPage = index;
    }
    
    //페이지의 경계를 기준으로 가까운 뷰의 인덱스로 바뀜
    //    currentOffset = scrollView.contentOffset.x/WIDTH_VIEW * 10;
    //    if (currentOffset%10 <5) {
    //        index = currentOffset / 10;
    //    } else{
    //        index = currentOffset / 10 + 1;
    //    }
    //    pageControl.currentPage = index;
}
- (IBAction)version:(UIButton *)sender
{
    
    NSLog(@"%@",[[UIDevice currentDevice] systemVersion]);
    NSLog(@"%@",[[UIDevice currentDevice] name]);
    NSLog(@"%@",[[UIDevice currentDevice] model]);
    NSLog(@"%@",[[UIDevice currentDevice] localizedModel]);
    NSLog(@"%@",[[UIDevice currentDevice] systemName]);
    NSLog(@"%ld",(long)[[UIDevice currentDevice] batteryState]);
    
}

@end


