//
//  StripePaymentService.h
//  Payments
//
//  Created by Aleksandra Korolczuk on 2017-08-29.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"


@interface StripePaymentService : NSObject <PaymentDelegate> 

@end
