//
//  Player.h
//  SnakeLadders
//
//  Created by Aleksandra Korolczuk on 2017-09-01.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject



@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary *gameLogic;
@property (nonatomic) NSString * output;
@property (nonatomic) BOOL gameOver;
@property (nonatomic) NSString *name;


- (void) rollTheDice;

@end


