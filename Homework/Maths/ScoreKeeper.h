//
//  ScoreKeeper.h
//  Maths
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger *wrong;
@property (nonatomic, assign) NSInteger *right;

- (instancetype)initWithInput:(InputHandler *) iph;
- (NSString *) showScores;




@end
