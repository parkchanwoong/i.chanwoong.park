//
//  main.m
//  Gamejob
//
//  Created by 박찬웅 on 2017. 1. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Person.h"


int main(int argc, const char * argv[]) {
    
  
   /*
    Person *man = [[Person alloc] init];
    
    man.name = @"chanwoong";
    [man attack];
    [man defense];
   
    
    man.height = @181.2;
    man.eyeColor = @"dark";
    
    NSLog(@"My name is %@",man.name);
    NSLog(@"My height is %@",man.height);
    NSLog(@"My eyeColor is %@",man.eyeColor);
    
    
    Person *woman = [Person new];
    
    woman.name = @"수지";
    woman.height = @167.2;
    woman.eyeColor = @"blue";
    
    NSLog(@"저는 %@ 입니다. 저%@.",woman.name, woman.name);
    NSLog(@"제 키는 %@ 입니다.",woman.height);
    NSLog(@"제 눈 색은 %@ 입니다.",woman.eyeColor);
    
    */
    
    Warrior *strong = [[Warrior alloc] init]; //[Warrior new]

    
    strong.health = 100;
    strong.mana = 50;
    strong.physicalAttack = 7;
    strong.magicalAttack = 3;
    
 
    Wizard *wizard = [[Wizard alloc] init];
    
    wizard.health = 70;
    wizard.mana = 120;
    wizard.physicalAttack = 2;
    wizard.magicalAttack = 9;
    
    
    
    [strong physicalPower:wizard];
    
    
    return 0;
}
