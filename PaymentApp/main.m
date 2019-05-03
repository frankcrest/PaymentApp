//
//  main.m
//  PaymentApp
//
//  Created by Frank Chen on 2019-05-03.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        int randomDollarValue = arc4random_uniform(900) + 100;
        NSLog(@"Thank you for shopping at Amce.com. Your total today is $%d. Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay", randomDollarValue);
        
        char userInput[255];
        fgets(userInput, 255, stdin);
        NSString* userInputString = [NSString stringWithUTF8String:userInput];
        userInputString = [userInputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        int userInputInt = [userInputString intValue];
        NSLog(@"%d", userInputInt);
        
        PaymentGateway* myPaymentGateway = [[PaymentGateway alloc]init];
        
        switch (userInputInt) {
            case 1:{
                PaypalPaymentService* paypalService = [[PaypalPaymentService alloc]init];
                myPaymentGateway.paymentDelegate = paypalService;
                break;
            }
            case 2:
            {
                StripePaymentService* stripeService = [[StripePaymentService alloc]init];
                myPaymentGateway.paymentDelegate = stripeService;
                break;
            }
            case 3:{
                AmazonPaymentService* amazonService = [[AmazonPaymentService alloc]init];
                myPaymentGateway.paymentDelegate = amazonService;
                break;
            }
            
            case 4:{
                ApplePaymentService* appleService = [[ApplePaymentService alloc]init];
                myPaymentGateway.paymentDelegate = appleService;
                break;
            }
            default:
                break;
        }
        
        [myPaymentGateway processPaymentMethod:userInputInt];
        
    }
    return 0;
}
