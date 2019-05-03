//
//  PaymentGateway.m
//  PaymentApp
//
//  Created by Frank Chen on 2019-05-03.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentMethod: (NSInteger)paymentAmount{
    if (self.paymentDelegate.canProcessPayment) {
         [self.paymentDelegate processPaymentMethod:paymentAmount];
    } else{
        NSLog(@"Apologies, cannot process payment at this time");
    }
   
}

@end
