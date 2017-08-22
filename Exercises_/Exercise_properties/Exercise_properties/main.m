//
//  main.m
//  Exercise_properties
//
//  Created by Aleksandra Korolczuk on 2017-08-18.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *std2 = [[Student alloc] initWithId:(0) name:@"Alex" gpa:4.0];
        NSLog(@"%@", std2.getName);
        [std2 setName:@"ola"];
        NSLog(@"%@", std2.getName);
    }
    return 0;
}
