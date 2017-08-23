//
//  ScoreKeeper.h
//  Maths_Part2
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (assign) int right;
@property (assign) int wrong;
@property (nonatomic) NSString *percentage;

- (void) printCurrentState;


@end
