//
//  main.m
//  XXDecimalNumberHandleDemo
//
//  Created by 段新瑞 on 2018/4/16.
//  Copyright © 2018年 段新瑞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XXDecimalNumberHandle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XXDecimalNumberHandle *handle = [[XXDecimalNumberHandle alloc] initWithString:@"20"];
        NSLog(@"%@", handle.addString(@"0.5").divideDouble(5.192374).decimalNumber);
        
        
        double price = 78.6;
        NSLog(@"%lf", price); // 78.600000
        XXDecimalNumberHandle *decimalNumber = [[XXDecimalNumberHandle alloc] initWithDouble:price];
        NSLog(@"%@", decimalNumber); // 78.59999999999999
        // 通过控制台po得到的结果是: po decimalNumber --> 78.6
        NSDictionary *dict = @{@"price" : @(price), @"decimalNumber" : decimalNumber.decimalNumber};
        NSLog(@"%@", dict);
        /**
         {
         decimalNumber = "78.6";
         price = "78.59999999999999";
         }
         */
        
    }
    return 0;
}
