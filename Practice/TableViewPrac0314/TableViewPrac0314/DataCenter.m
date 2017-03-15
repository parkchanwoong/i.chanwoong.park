//
//  DataCenter.m
//  TableViewPrac0314
//
//  Created by 박찬웅 on 2017. 3. 14..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "DataCenter.h"
@interface DataCenter()
//@property NSDictionary *books;

@end

@implementation DataCenter


+(instancetype)shared
{
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc]init];
    });
    return dataCenter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setBooks];
    }
    return self;
}

- (void)setBooks
{
    
    self.booksName = [NSMutableArray arrayWithObjects:@"나미야 잡화점의 기적",@"용의자 x의 헌신",@"머스커레이드 호텔", nil];
    self.author = [NSMutableArray arrayWithObjects:@"히가시노 케이고",@"히가시노 케이고",@"히가시노 케이고", nil];
    self.booksImages = [NSMutableArray arrayWithObjects:@"namiya.jpg",@"x.jpg",@"hotel.jpg", nil];
    self.story = [NSMutableArray arrayWithObjects:@"2012년 3월 일본에서 출간되어 큰 화제를 불러일으킨, 히가시노 게이고 최신작. 이번 이야기에는 그동안 히가시노 게이고 하면 떠올랐던 살인 사건이나 명탐정 캐릭터는 전혀 등장하지 않는다. 그럼에도 불구하고 마치 퍼즐을 맞추어가는 듯한 치밀한 짜임새는 과연 히가시노 게이고의 작품답게 명불허전의 짜릿한 쾌감을 선사하며 감동을 자아내 작가의 고정 독자를 충분히 매료시킨다.총 5장으로 구성된 <나미야 잡화점의 기적>은 기묘한 편지를 주고받는다는 설정 때문에 판타지 색채가 두드러져 보일 수 있지만 이는 각각의 이야기와 등장인물을 하나의 연결 고리로 모으는 주요 장치로 작용한다.XX시 외곽에 자리한 나미야 잡화점은 30여 년간 비어 있던 오래된 가게이다. 어느 날 이곳에 삼인조 좀도둑들이 숨어든다. 이들은 몇 시간 전 강도짓을 하고 경찰의 눈을 피해 달아나던 참이었다. 인적이 드문 외딴집인 줄로만 알았는데 난데없이 나미야 잡화점 주인 앞으로 의문의 편지 한 통이 도착하고, 세 사람은 얼떨결에 편지를 열어 본다.처음에는 누군가 자신들을 노리고 장난을 치고 있다고 생각했다가 편지 내용에 이끌려 답장을 해주기 시작한다. 하나로 그칠 줄 알았던 편지가 계속해서 도착하고 어느새 세 사람은 고민을 적어 보낸 이들의 앞날이 어떻게 풀릴지 자신들의 일처럼 진심으로 걱정하게 된다.각 장마다 고민 상담 편지를 보낸 이들의 애틋한 사연이 담겨 있다. 수십 년 전 나미야 유지에게 고민을 상담하는 편지가 무슨 이유로 현재는 비어 있는 가게 우편함으로 들어왔는지, 과연 그것이 우연인지 필연인지에 대한 비밀은 이야기가 거듭될수록 조금씩 풀려간다. 그리고 놀라운 기적이 일어나기 시작한다.",@"일본 미스터리 소설사 이래 최초로 3개 부문 베스트 1위를 기록한 초유의 화제작. <이 미스터리가 최고>, <본격 미스터리 베스트 10>, <주간문춘 미스터리 베스트 10> 부문에 각각 1위를 기록한 작품이며, 2006년 나오키상 수상작이다. 『백야행』, 『레몬』의 작가 히가시노 게이고의 2006년 최고 화제작.사건은 에도가와 근처 작은 도시의 연립주택에서 한 모녀가 중년의 남자를 교살하는 것으로 시작된다. 이혼한 아내 야스코가 돈을 갈취하는 전남편을 우발적으로 살해하게 된 것. 옆집에 사는 천재 수학교사 이시가미는 마음 속으로 사랑해온 야스코를 위해 비상한 두뇌로 범행사실 은폐에 나선다. 완벽한 알리바이로 미궁에 빠진 형사는 이시가미의 대학 동창인 천재교수 유가와에게 도움을 요청하고 사건은 새로운 국면으로 접어든다.『용의자 X의 헌신』은 일본 추리소설에서 흔히 보여지는 잔혹함이나 엽기 호러가 아닌 사랑과 ‘헌신’이라는 고전적이며 낭만적인 테제를 따르고 있으며, 미로처럼 섬세하게 얽혀 예측하기 힘든 사건 전개와 속도감을 더하는 구어체 진술로 주제를 잘 풀어나가고 있다.",@"『매스커레이드 호텔』은 히가시노 게이고의 작가 생활 25주년을 기념하는 특별한 작품이다. 범죄 해결의 실마리를 풀어가는 수사 과정이 호텔이란 특정 공간에서 일어나는 예측 불가능한 사건들과 교차하면서 숨 가쁘게 이어지는 소설이다. 사건이 발생하고 범인을 잡는 과정을 그린 작품이란 점에서 마땅히 추리소설로 분류해야 하지만 그보다 넓게 보면 온갖 군상이 등장하는 휴먼 드라마에 가깝다. 새롭게 등장한 캐릭터인 닛타 고스케 형사를 만날 수 있다.", nil];
    
//    self.books = @{@"이름" : @[@"abc",@"def"],
//                   @"저자" : @[@"가나다",@"라마바"]};
}

- (NSInteger)booksCounts
{
    NSInteger count = [self.booksName count];
    return  count;
//    return self.booksName.count;
}


@end
