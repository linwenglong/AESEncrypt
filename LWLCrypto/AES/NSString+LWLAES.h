//
//  NSString+LWLAES.h
//  LWLCrypto
//
//  Created by linwenlong on 2019/4/3.
//  Copyright © 2019 linwenlong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (LWLAES)

/** CFB*/

/** 加密*/
- (NSString *)lwl_aes128Encrypt;

/** 解密*/
- (NSString *)lwl_aes128Decrypt;



@end

NS_ASSUME_NONNULL_END
