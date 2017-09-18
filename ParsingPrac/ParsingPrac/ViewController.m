//
//  ViewController.m
//  ParsingPrac
//
//  Created by 박찬웅 on 2017. 8. 29..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    datalist = [[NSMutableArray alloc] init];
    
    
    parser = [[NSXMLParser alloc]initWithContentsOfURL:[NSURL URLWithString:@"http://openAPI.seoul.go.kr:8088/sample/xml/GeoInfoBikeConvenientFacilitiesWGS/1/5/"]];
    
    parser.delegate = self;
    [parser parse];
    
    NSLog(@"%@",datalist);
}
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict
{
    NSLog(@"didStartElement : %@",elementName);
    if ([elementName isEqualToString:@"row"]) {
        detailData = [[NSMutableDictionary alloc]init];
    }
    
    elementTemp = elementName;
    
    blank = YES;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if(blank == YES && ![elementTemp isEqualToString:@"row"])
    {
    NSLog(@"foundCharacters : %@",string);
        [detailData setObject:string forKey:elementTemp];
    }
}



- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:@"row"]) {
        [datalist addObject:detailData];
    }
    NSLog(@"didEndElement : %@",elementName);
    blank = NO;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDictionary *dicTemp = [datalist objectAtIndex:indexPath.row];
    
    cell.address.text = [dicTemp objectForKey:@"ADDRESS"];
    cell.CLASS.text  = [dicTemp objectForKey:@"CLASS"];
    cell.filename.text = [dicTemp objectForKey:@"FILENAME"];
    cell.latX.text = [dicTemp objectForKey:@"LAT"];
    cell.lngY.text = [dicTemp objectForKey:@"LNG"];
    cell.objectID.text = [dicTemp objectForKey:@"OBJECTID"];
    
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return datalist.count;
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
