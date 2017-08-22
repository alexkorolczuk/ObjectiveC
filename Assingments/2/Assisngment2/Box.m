//
//  Box.m
//  Assisngment2
//
//  Created by Aleksandra Korolczuk on 2017-08-18.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "Box.h"

@implementation Box




- (instancetype)initWithHeigh:(float) heigh lenght:(float) lenght width:(float) width
{
    self = [super init];
    if (self) {
        _height = heigh;
        _lenght = lenght;
        _width = width;
        
    }
    return self;
}

- (float)calculateVolumeWithHeigh
{
    float volume = self.height * self.lenght * self.width;
    
    return volume;
}

- (float)calculateBoxInBox:(Box *) box
{
    float boxInbox = self.calculateVolumeWithHeigh / box.calculateVolumeWithHeigh;

    if (boxInbox > 0){
        printf("Box 2 can fit in box 2 %f times \n", boxInbox);
    } else if (boxInbox<0){
        printf("Box 1 can fit in box 1 %f times \n", boxInbox);
    } else
        printf("Boxes are the same");
    
    
    return boxInbox;
}

@end

