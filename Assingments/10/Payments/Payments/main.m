//
//  main.m
//  Payments
//
//  Created by Aleksandra Korolczuk on 2017-08-29.
//  Copyright © 2017 Aleksandra Korolczuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        
        int  price = arc4random_uniform(900)+100;

        
        // menu:
        NSLog(@" Thank you for shopping with eBay. Your total is %d, please select payment method 1- Paypal, 2 - Stripe, 3 - Amazon, 4 - Apple" ,price);
        
        NSString *input = [InputHandler getUserInput];
        int input_value = [input intValue];
        NSLog(@"You chose: %d", input_value);
        PaymentGateway *paymentgateway = [[PaymentGateway alloc]init];

        
        
        // we need reference here because inside switch statements everything will be gone after
        //the swich. if we want object to stick around, we need to declare them here
        PaypalPaymentService *paypal;
        StripePaymentService *stripe;
        AmazonPaymentService *amazon;
        ApplePaymentService *apple;
        
        switch (input_value)
        {
            case 1:
            {
                paypal = [[PaypalPaymentService alloc]init];
                paymentgateway.delegate = paypal;
                break;
            }
            case 2:
            {
                stripe = [[StripePaymentService alloc]init];
                paymentgateway.delegate = stripe;
                break;
            }
            case 3:
            {
                amazon = [[AmazonPaymentService alloc]init];
                paymentgateway.delegate = amazon;
                break;
            }
            case 4:
            {
                apple = [[ApplePaymentService alloc]init];
                paymentgateway.delegate = apple;
            }
            default:
                break;
        }

        [paymentgateway processPaymentAmount:price];
        
        
    }
    return 0;
}
