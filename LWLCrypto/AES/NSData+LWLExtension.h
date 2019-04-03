//
//  NSData+LWLExtension.h
//  LWLCrypto
//
//  Created by linwenlong on 2019/4/3.
//  Copyright © 2019 linwenlong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (LWLExtension)


/**
 AES加密解密 CFB

 @param operation 加密还是解密
 @param keyStr 密钥
 @param ivStr 偏移量
 @return 返回进制流
 */
- (NSData *)aes128ByCFBModeWithOperation:(CCOperation)operation key:(NSString *)keyStr iv:(NSString *)ivStr;

@end

NS_ASSUME_NONNULL_END
