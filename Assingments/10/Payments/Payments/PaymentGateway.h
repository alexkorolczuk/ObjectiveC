//
//  PaymentGateway.h
//  Payments
//
//  Created by Aleksandra Korolczuk on 2017-08-29.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>


@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount:(NSInteger *)price;
- (BOOL)canProcessPayment;

@end


@interface PaymentGateway : NSObject


@property (nonatomic, weak) id <PaymentDelegate> delegate;


- (void)processPaymentAmount:(NSInteger *)price;





@end
