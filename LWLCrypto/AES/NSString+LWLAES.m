//
//  NSString+LWLAES.m
//  LWLCrypto
//
//  Created by linwenlong on 2019/4/3.
//  Copyright © 2019 linwenlong. All rights reserved.
//

#import "NSString+LWLAES.h"
#import "NSData+LWLExtension.h"
#import "NSData+Base64Encoded.h"

@implementation NSString (LWLAES)

/** AES加密：key */
static NSString * const kAESKey = @"1234567896543210"; // 16位
/** AES加密：iv */
static NSString * const kAESIv = @"3829474928482923"; // 16位

/** CFB*/

/** 加密*/
- (NSString *)lwl_aes128Encrypt {
   
    
    NSData *originData = [self dataUsingEncoding:NSUTF8StringEncoding];
    // 1.Aes256 加密
    NSData *encodeData = [originData aes128ByCFBModeWithOperation:kCCEncrypt key:kAESKey iv:kAESIv];
    
    // 2.Base64 Encode
    
    NSString *base64EncodeStr = [encodeData base64EncodedStringWithOptions:0];
    
    return base64EncodeStr;
    
}

/** 解密*/
- (NSString *)lwl_aes128Decrypt {
     NSData *base64DecodeData = [NSData dataWithBase64EncodedString:self];
    // 1.Aes256 解密
    NSData *decodeData = [base64DecodeData aes128ByCFBModeWithOperation:kCCDecrypt key:kAESKey iv:kAESIv];
    NSString *decodeStr = [[NSString alloc] initWithData:decodeData encoding:NSUTF8StringEncoding];
    if (decodeStr == nil) {
        // 解密失败
        NSLog(@"解密失败");
        return nil;
    }
    return decodeStr;
   
}

@end
