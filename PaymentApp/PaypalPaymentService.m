//
//  PaypalPaymentService.m
//  PaymentApp
//
//  Created by Frank Chen on 2019-05-03.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentMethod:(NSInteger)paymentAmount {
    NSLog(@"Paypal Processed Amount $%ld", (long)paymentAmount);
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2);
}

@end
