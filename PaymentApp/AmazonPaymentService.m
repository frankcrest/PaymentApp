
//
//  AmazonPaymentService.m
//  PaymentApp
//
//  Created by Frank Chen on 2019-05-03.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentMethod:(NSInteger)paymentAmount {
    NSLog(@"Amazon Processed Amount $%ld", (long)paymentAmount);
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2);
}

@end
