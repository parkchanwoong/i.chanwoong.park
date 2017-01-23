//
//  main.m
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 18..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

//Person* person = [[Person alloc] init];
//
//person.name = @"박찬웅";
//person.age = 26;


#import <Foundation/Foundation.h>
#import "Zombie.h"
#import "Plants.h"
#import "Person.h"
#import "UniversityStudent.h"



int main(int argc, const char * argv[]) {
    
   /*
    Zombie* zombie = [[Zombie alloc] init];
    
    zombie.zName = @"바보";
    zombie.zHealth = 20;
    zombie.boneAttack = 5;
    zombie.boneDefense = 3;
    
    
    
    Plants* plant = [[Plants alloc] init];
    
    plant.pName = @"식물";
    plant.pHealth = 15;
    plant.leafAttack = 5;
    plant.leafDefense = 4;
    
    
    
    
    
    [zombie jumpTo:plant];
    

    */
    
    //    [zombie attack:plant];
    //
    //    [plant leafAttack:zombie];
    
    //NSLog(@"zombie의 체력 : %lu",(unsigned long)plant.pHealth);
    
    //Person* person = [[Person alloc] init];
   
    UniversityStudent *us = [[UniversityStudent alloc] init];
    
    us.name = @"wing";
    
    [us named];
    
    
    
            return 0;
}
