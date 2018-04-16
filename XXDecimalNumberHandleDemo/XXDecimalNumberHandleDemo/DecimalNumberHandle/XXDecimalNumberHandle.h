//
//  XXXXDecimalNumberHandle.h
//  XXDecimalNumberHandleHandle
//
//  Created by 段新瑞 on 2018/4/16.
//  Copyright © 2018年 段新瑞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XXDecimalNumberHandle : NSObject

@property (nonatomic, strong, readonly) NSDecimalNumber *decimalNumber;

- (instancetype)init;
- (instancetype)initWithChar:(char)value;
- (instancetype)initWithUnsignedChar:(unsigned char)value;
- (instancetype)initWithBool:(BOOL)value;
- (instancetype)initWithCoder:(NSCoder *)value;
- (instancetype)initWithShort:(short)value;
- (instancetype)initWithUnsignedShort:(unsigned short)value;
- (instancetype)initWithInt:(int)value;
- (instancetype)initWithUnsignedInt:(unsigned int)value;
- (instancetype)initWithInteger:(NSInteger)value;
- (instancetype)initWithUnsignedInteger:(NSUInteger)value;
- (instancetype)initWithLong:(long)value;
- (instancetype)initWithUnsignedLong:(unsigned long)value;
- (instancetype)initWithLongLong:(long long)value;
- (instancetype)initWithUnsignedLongLong:(unsigned long long)value;
- (instancetype)initWithFloat:(float)value;
- (instancetype)initWithDouble:(double)value;
- (instancetype)initWithString:(NSString *)value;


/**
 创建

 @param mantissa 长整形
 @param exponent 指数 +(乘) -(除) 1(10) 2(100) 3(1000)
 @param flag 正负数 NO(正) YES(负)
 
 NSDecimalNumber *subtotalAmount = [NSDecimalNumber decimalNumberWithMantissa:1275 exponent:-2 isNegative:NO];   //12.75
 NSDecimalNumber *subtotalAmount = [NSDecimalNumber decimalNumberWithMantissa:1275 exponent:2 isNegative:YES];   //-127500
 */
+ (XXDecimalNumberHandle *)decimalNumberHandleWithMantissa:(unsigned long long)mantissa exponent:(short)exponent isNegative:(BOOL)flag;

/**
 将C语言NSDecimal类型转成一个十进制数。
 基本不会用到
 */
+ (XXDecimalNumberHandle *)decimalNumberHandleWithDecimal:(NSDecimal)dcm;


/**
 将字符串转成一个十进制数。
 */
+ (XXDecimalNumberHandle *)decimalNumberWithString:(nullable NSString *)numberValue;


/**
 将字符串转成一个十进制数。

 @param numberValue 字符串
 
 @param locale 格式
 1  NSDictionary *locale = [NSDictionary dictionaryWithObject:@"," forKey:NSLocaleDecimalSeparator];    //以","当做小数点格式
    NSDecimalNumber *discountAmount = [NSDecimalNumber decimalNumberWithString:@"123,40" locale:locale];    //123.4
 2  NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"fr_FR"];    //法国数据格式,法国的小数点是','逗号
    NSDecimalNumber *discountAmount = [NSDecimalNumber decimalNumberWithString:@"123,40" locale:locale];    //123.4
 */
+ (XXDecimalNumberHandle *)decimalNumberWithString:(nullable NSString *)numberValue locale:(nullable id)locale;

/// 加 +
@property (nonatomic, copy, readonly) XXDecimalNumberHandle * (^addShort)(short value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle * (^addUnsignedShort)(unsigned short value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^addInt)(int value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^addUnsignedInt)(unsigned int value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^addInteger)(NSInteger value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^addLong)(long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^addLongLong)(long long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^addUnsignedLongLong)(unsigned long long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^addFloat)(float value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^addDouble)(double value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^addNumber)(NSDecimalNumber *value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^addString)(NSString *value);

// 减 -
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractShort)(short value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractUnsignedShort)(unsigned short value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractInt)(int value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractUnsignedInt)(unsigned int value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractInteger)(NSInteger value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractLong)(long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractLongLong)(long long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractUnsignedLongLong)(unsigned long long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractFloat)(float volue);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractDouble)(double value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractNumber)(NSDecimalNumber *value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^substractString)(NSString *value);

// 乘 *
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyShort)(short value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyUnsignedShort)(unsigned short value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyInt)(int value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyUnsignedInt)(unsigned int value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyInteger)(NSInteger value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyLong)(long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyLongLong)(long long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyUnsignedLongLong)(unsigned long long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyFloat)(float value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyDouble)(double value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyNumber)(NSDecimalNumber *value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^multiplyString)(NSString *value);

// 除 /
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideShort)(short value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideUnsignedShort)(unsigned short value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideInt)(int value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideUnsignedInt)(unsigned int value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideInteger)(NSInteger value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideLong)(long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideLongLong)(long long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideUnsignedLongLong)(unsigned long long value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideFloat)(float value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideDouble)(double value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideNumber)(NSDecimalNumber *value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^divideString)(NSString *value);

// 4舍5入 - 不保留小数
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^rounding)(void);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^roundingFloat)(float value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^roundingDouble)(double value);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^roundingNumber)(NSDecimalNumber *value);

// 4舍5入 - 指定保留小数点后scale位
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^roundingByScale)(short scale);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^roundingFloatByScale)(float value, short scale);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^roundingDoubleByScale)(double value, short scale);
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^roundingNumberByScale)(NSDecimalNumber *value, short scale);

// 绝对值
@property (nonatomic, copy, readonly) XXDecimalNumberHandle* (^absolute)(void);


@end























