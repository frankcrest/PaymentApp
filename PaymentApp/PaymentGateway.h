//
//  PaymentGateway.h
//  PaymentApp
//
//  Created by Frank Chen on 2019-05-03.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>

-(void)processPaymentMethod:(NSInteger)paymentAmount;
-(BOOL)canProcessPayment;

@end
@interface PaymentGateway : NSObject

@property (nonatomic, strong) id <PaymentDelegate> paymentDelegate;
-(void)processPaymentMethod: (NSInteger)paymentAmount;

@end

NS_ASSUME_NONNULL_END
