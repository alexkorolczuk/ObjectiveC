//
//  main.m
//  Assingment3
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        Person *p1 = [[Person alloc]initWithName:@"Java" andAge:20];
        Person *p2 = [[Employee alloc]initWithName:@"Java" andAge:20 andEdu:@"University"];
        
        [p1 print];
        [p2 print];

        
        
    
        
    }
    return 0;
}
