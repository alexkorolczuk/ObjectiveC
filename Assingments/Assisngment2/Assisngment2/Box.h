//
//  Box.h
//  Assisngment2
//
//  Created by Aleksandra Korolczuk on 2017-08-18.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign, readonly) float height;
@property (nonatomic, assign, readonly) float lenght;
@property (nonatomic, assign, readonly) float width;

- (instancetype)initWithHeigh:(float) heigh lenght:(float) lenght width:(float) width;
- (float)calculateVolumeWithHeigh;
- (float)calculateBoxInBox:(Box *) box;


           
           
@end
