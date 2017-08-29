//
//  PaymentGateway.m
//  Payments
//
//  Created by Aleksandra Korolczuk on 2017-08-29.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway


- (void)processPaymentAmount:(NSInteger *)price
{
    if([self.delegate canProcessPayment] == YES)
            [self.delegate processPaymentAmount:price];
    else
        NSLog(@"Payment cannot be processed");


}



@end
