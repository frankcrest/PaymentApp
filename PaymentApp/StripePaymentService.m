//
//  StripePaymentService.m
//  PaymentApp
//
//  Created by Frank Chen on 2019-05-03.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentMethod:(NSInteger)paymentAmount {
    NSLog(@"Stripe Processed Amount $%ld", (long)paymentAmount);
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2);
}


@end
