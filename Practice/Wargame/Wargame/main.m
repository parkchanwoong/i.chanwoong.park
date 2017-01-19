//
//  main.m
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 18..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Zombie.h"
#import "Plants.h"

int main(int argc, const char * argv[]) {
    
    Zombie* zombie = [[Zombie alloc] init];
    
    zombie.zHealth = 20;
    zombie.boneAttack = 5;
    zombie.boneDefense = 3;
    
    
    
    Plants* plant = [Plants new];
    
    plant.pHealth = 15;
    plant.leafAttack = 5;
    plant.leafDefense = 4;
    
    
    
    

    [zombie attack:plant];
    
    
    
    [plant leafAttack:zombie];
    
    //NSLog(@"zombie의 체력 : %lu",(unsigned long)plant.pHealth);
    
    
            return 0;
}
