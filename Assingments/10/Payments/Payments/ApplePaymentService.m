//
//  ApplePaymentService.m
//  Payments
//
//  Created by Aleksandra Korolczuk on 2017-08-29.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(NSInteger *)price
{
    NSLog(@"Apple proccessed %ld $", price);
}

- (BOOL)canProcessPayment
{
    int can_cant = arc4random_uniform(2)+0;
    
    if (can_cant == 1)
        return YES;
    else
        return NO;
}




@end
