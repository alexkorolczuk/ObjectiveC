//
//  main.m
//  Assisngment2
//
//  Created by Aleksandra Korolczuk on 2017-08-18.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {

    
        Box *box1 = [[Box alloc] initWithHeigh:(1.1) lenght:(2.2) width:3.3 ];
        float volume1 = [box1 calculateVolumeWithHeigh];
        printf("Volume 1: %f\n", volume1);
        Box *box2 = [[Box alloc] initWithHeigh:(0.8) lenght:(5.2) width:(1.9)];
        float volume2 = [box2 calculateVolumeWithHeigh];
        printf("Volume 2: %f\n", volume2);
        [box1 calculateBoxInBox: box2];
    }
    return 0;
}
