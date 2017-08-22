//
//  InputHandler.h
//  Maths
//
//  Created by Aleksandra Korolczuk on 2017-08-21.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

@property (nonatomic, copy) NSString *score;

- (instancetype)initWithInput:(NSString *)input withAnswer:(NSString *)answer;
+ (NSString *)getUserInput;
- (NSString *) compareInput:(NSString *)input withAnswer:(NSString *)answer;

@end
