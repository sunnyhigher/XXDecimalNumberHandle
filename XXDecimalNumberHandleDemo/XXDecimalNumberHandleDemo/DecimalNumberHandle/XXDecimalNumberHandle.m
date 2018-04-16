//
//  XXXXDecimalNumberHandle.m
//  XXDecimalNumberHandleHandle
//
//  Created by 段新瑞 on 2018/4/16.
//  Copyright © 2018年 段新瑞. All rights reserved.
//

#import "XXDecimalNumberHandle.h"

@interface XXDecimalNumberHandle ()

@property (nonatomic, strong, readwrite) NSDecimalNumber *decimalNumber;

@end

@implementation XXDecimalNumberHandle

- (instancetype)init {
    if (self = [super init]) {
        self.decimalNumber = [NSDecimalNumber zero];
    }
    return self;
}

- (instancetype)initWithChar:(char)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithChar:value];
    }
    return self;
}

- (instancetype)initWithUnsignedChar:(unsigned char)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithUnsignedChar:value];
    }
    return self;
}
- (instancetype)initWithBool:(BOOL)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithBool:value];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithCoder:value];
    }
    return self;
}

- (instancetype)initWithShort:(short)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithShort:value];
    }
    return self;
}

- (instancetype)initWithUnsignedShort:(unsigned short)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithUnsignedShort:value];
    }
    return self;
}

- (instancetype)initWithInt:(int)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithInt:value];
    }
    return self;
}

- (instancetype)initWithUnsignedInt:(unsigned int)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithUnsignedInt:value];
    }
    return self;
}

- (instancetype)initWithInteger:(NSInteger)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithInteger:value];
    }
    return self;
}

- (instancetype)initWithUnsignedInteger:(NSUInteger)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithUnsignedInteger:value];
    }
    return self;
}

- (instancetype)initWithLong:(long)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithLong:value];
    }
    return self;
}

- (instancetype)initWithUnsignedLong:(unsigned long)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithUnsignedLong:value];
    }
    return self;
}

- (instancetype)initWithLongLong:(long long)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithLongLong:value];
    }
    return self;
}

- (instancetype)initWithUnsignedLongLong:(unsigned long long)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithUnsignedLongLong:value];
    }
    return self;
}

- (instancetype)initWithFloat:(float)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithFloat:value];
    }
    return self;
}

- (instancetype)initWithDouble:(double)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithDouble:value];
    }
    return self;
}

- (instancetype)initWithString:(NSString *)value {
    if (self = [super init]) {
        self.decimalNumber = [[NSDecimalNumber alloc] initWithString:value];
    }
    return self;
}

+ (XXDecimalNumberHandle *)decimalNumberHandleWithMantissa:(unsigned long long)mantissa exponent:(short)exponent isNegative:(BOOL)flag {
    XXDecimalNumberHandle *handle = [[XXDecimalNumberHandle alloc] init];
    handle.decimalNumber = [NSDecimalNumber decimalNumberWithMantissa:mantissa exponent:exponent isNegative:flag];
    return handle;
}

+ (XXDecimalNumberHandle *)decimalNumberHandleWithDecimal:(NSDecimal)dcm {
    XXDecimalNumberHandle *handle = [[XXDecimalNumberHandle alloc] init];
    handle.decimalNumber = [NSDecimalNumber decimalNumberWithDecimal:dcm];
    return handle;
}

+ (XXDecimalNumberHandle *)decimalNumberWithString:(nullable NSString *)numberValue {
    XXDecimalNumberHandle *handle = [[XXDecimalNumberHandle alloc] init];
    handle.decimalNumber = [NSDecimalNumber decimalNumberWithString:numberValue];
    return handle;
}

+ (XXDecimalNumberHandle *)decimalNumberWithString:(nullable NSString *)numberValue locale:(nullable id)locale {
    XXDecimalNumberHandle *handle = [[XXDecimalNumberHandle alloc] init];
    handle.decimalNumber = [NSDecimalNumber decimalNumberWithString:numberValue locale:locale];
    return handle;
}

- (XXDecimalNumberHandle *(^)(short))addShort {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle * (short value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithShort:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned short))addUnsignedShort {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle * (unsigned short value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedShort:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(int))addInt {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(int value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithInt:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned int))addUnsignedInt {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(unsigned int value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedInt:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSInteger))addInteger {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSInteger value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithInteger:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(long))addLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(long long))addLongLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(long long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithLongLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned long long))addUnsignedLongLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(unsigned long long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedLongLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(float))addFloat {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(float value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithFloat:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(double))addDouble {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(double value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithDouble:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSDecimalNumber *))addNumber {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSDecimalNumber *dNumber) {
        if (dNumber) {
            weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        }
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSString *))addString {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSString *value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithString:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByAdding:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(short))substractShort {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(short value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithShort:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned short))substractUnsignedShort {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(unsigned short value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedShort:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(int))substractInt {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(int value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithInt:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned int))substractUnsignedInt {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(unsigned int value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedInt:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSInteger))substractInteger {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSInteger value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithInteger:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(long))substractLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(long long))substractLongLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(long long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithLongLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned long long))substractUnsignedLongLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(unsigned long long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedLongLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(float))substractFloat {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(float value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithFloat:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(double))substractDouble {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(double value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithDouble:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSDecimalNumber *))substractNumber {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSDecimalNumber *dNumber) {
        if (dNumber) {
            weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        }
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSString *))substractString {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSString *value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithString:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberBySubtracting:dNumber];
        return weakSelf;
    };
}


- (XXDecimalNumberHandle *(^)(short))multiplyShort {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(short value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithShort:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned short))multiplyUnsignedShort {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(unsigned short value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedShort:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(int))multiplyInt {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(int value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithInt:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned int))multiplyUnsignedInt {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(unsigned int value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedInt:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSInteger))multiplyInteger {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSInteger value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithInteger:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(long))multiplyLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(long long))multiplyLongLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(long long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithLongLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned long long))multiplyUnsignedLongLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(unsigned long long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedLongLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(float))multiplyFloat {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(float value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithFloat:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(double))multiplyDouble {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(double value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithDouble:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSDecimalNumber *))multiplyNumber {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSDecimalNumber *dNumber) {
        if (dNumber) {
            weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        }
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSString *))multiplyString {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSString *value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithString:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(short))divideShort {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(short value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithShort:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned short))divideUnsignedShort {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(unsigned short value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedShort:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(int))divideInt {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(int value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithInt:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned int))divideUnsignedInt {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(unsigned int value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedInt:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSInteger))divideInteger {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSInteger value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithInteger:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(long))divideLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(long long))divideLongLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(long long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithLongLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(unsigned long long))divideUnsignedLongLong {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(unsigned long long value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithUnsignedLongLong:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(float))divideFloat {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(float value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithFloat:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(double))divideDouble {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(double value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithDouble:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSDecimalNumber *))divideNumber {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSDecimalNumber *dNumber) {
        if (dNumber) {
            weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        }
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSString *))divideString {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSString *value) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithString:value];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByDividingBy:dNumber];
        return weakSelf;
    };
}




- (XXDecimalNumberHandle *(^)(void))rounding {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *() {
        return weakSelf.roundingByScale(0);
    };
}

- (XXDecimalNumberHandle *(^)(float))roundingFloat {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(float value) {
        return weakSelf.roundingFloatByScale(value, 0);
    };
}

- (XXDecimalNumberHandle *(^)(double))roundingDouble {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(double value) {
        return weakSelf.roundingDoubleByScale(value, 0);
    };
}

- (XXDecimalNumberHandle *(^)(NSDecimalNumber *))roundingNumber {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSDecimalNumber *dNumber) {
        return weakSelf.roundingNumberByScale(dNumber, 0);
    };
}

- (XXDecimalNumberHandle *(^)(short))roundingByScale {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(short scale) {
        NSDecimalNumberHandler *behavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:scale raiseOnExactness:YES raiseOnOverflow:YES raiseOnUnderflow:YES raiseOnDivideByZero:YES];
        weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByRoundingAccordingToBehavior:behavior];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(float, short))roundingFloatByScale {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(float value, short scale) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithFloat:value];
        NSDecimalNumberHandler *behavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:scale raiseOnExactness:YES raiseOnOverflow:YES raiseOnUnderflow:YES raiseOnDivideByZero:YES];
        weakSelf.decimalNumber = [dNumber decimalNumberByRoundingAccordingToBehavior:behavior];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(double, short))roundingDoubleByScale {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(double value, short scale) {
        NSDecimalNumber *dNumber = [[NSDecimalNumber alloc] initWithDouble:value];
        NSDecimalNumberHandler *behavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:scale raiseOnExactness:YES raiseOnOverflow:YES raiseOnUnderflow:YES raiseOnDivideByZero:YES];
        weakSelf.decimalNumber = [dNumber decimalNumberByRoundingAccordingToBehavior:behavior];
        return weakSelf;
    };
}

- (XXDecimalNumberHandle *(^)(NSDecimalNumber *, short))roundingNumberByScale {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *(NSDecimalNumber *dNumber, short scale) {
        if (dNumber) {
            NSDecimalNumberHandler *behavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:scale raiseOnExactness:YES raiseOnOverflow:YES raiseOnUnderflow:YES raiseOnDivideByZero:YES];
            weakSelf.decimalNumber = [dNumber decimalNumberByRoundingAccordingToBehavior:behavior];
        }
        return weakSelf;
    };
}

/**
 + (NSDecimalNumber *)getAbsolute:(NSDecimalNumber *)num {
 if ([num compare:[NSDecimalNumber zero]] == NSOrderedAscending) {
 // Number is negative. Multiply by -1
 NSDecimalNumber * negativeOne = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:0 isNegative:YES];
 return [num decimalNumberByMultiplyingBy:negativeOne];
 } else {
 return num;
 }
 }
 */

// https://stackoverflow.com/questions/846254/absolute-value-abs-of-nsdecimalnumber-without-loss-of-precision
- (XXDecimalNumberHandle *(^)(void))absolute {
    __weak __typeof(self) weakSelf = self;
    return ^XXDecimalNumberHandle *() {
        if ([weakSelf.decimalNumber compare:[NSDecimalNumber zero]] == NSOrderedAscending) {
            NSDecimalNumber *negativeOne = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:0 isNegative:YES];
            weakSelf.decimalNumber = [weakSelf.decimalNumber decimalNumberByMultiplyingBy:negativeOne];
        }
        return weakSelf;
    };
}




@end















































