# XXDecimalNumberHandle
# Object精度问题
### 项目中会遇见的问题
在项目中，一些小数计算往往不太注意，但是当遇到的一些精度计算问题，令人抓狂。

```
在涉及到和钱有关的计算时或者浮点数在总数中所占百分比计算，这些都是对精度要求严格的，而使用floatValue doubleValue的转化运算时，往往会出现误差
```
我们知道在计算机的存储中，任何数据都是以0、1的形式被存储记录，每一个这样的存储单位叫做位(bit)，这也是二进制的实现基础。
存储时，double和float是一样的，**不一样的地方是位数不同，float是32位，double是64位，所以double存储的精度比float高**
由于计算机在十进制中无法精确表示一些小数，比如0.6

```
         0.6
          *2
       --------
         1.2 ----> 1
          *2
       --------
         0.4 ----> 0
          *2
       --------
         0.8 ----> 0
          *2
       --------
         1.6 ----> 1
          *2
       --------
         1.2 ----> 1
          *2
       --------
         0.4 ----> 0
          *2
       --------
         0.8 ----> 0
          *2
       --------
         1.6 ----> 1
        ......
 11001100110011001100... 1100无穷尽
```
在实际项目中，当进行浮点型小数之间的比较时，会出现如下状况

```
if ([@"0.01" floatValue] < 0.01) {
    NSLog(@"我会被打印");
}
```
NSLog会被输出，无语了吧，**0.01 < 0.01**
**因为编译器看到小数，默认作为double处理，而float和double表示的精度不一样**

在项目中，精度问题，还会出现下方这种情况

```
double price = 78.6;
NSLog(@"%lf", price); // 78.600000
NSDictionary *dict = @{@"price" : @(price)};
NSLog(@"%@", dict);
/**
{
    price = "78.59999999999999";
}
*/
```
价格price打印出来竟然是78.59999999999999, 如果把这个字典作为键值传给服务器问题就是一个bug。
#### NSDecimalNumber
Apple建议使用NSDecimalNumber

```
double price = 78.6;
NSLog(@"%lf", price); // 78.600000
// 通过控制台po得到的结果是: po price --> 78.599999999999994
NSDecimalNumber *decimalNumber = [[NSDecimalNumber alloc] initWithDouble:price];
NSLog(@"%@", decimalNumber); // 78.59999999999999
// 通过控制台po得到的结果是: po decimalNumber --> 78.6
NSDictionary *dict = @{@"price" : @(price), @"decimalNumber" : decimalNumber};
NSLog(@"%@", dict);
/**
{
    decimalNumber = "78.6";
    price = "78.59999999999999";
}
*/
```
如此, 要正确的把值传给服务器, 干脆直接用NSDecimalNumber存入NSDictionary中得了。不过有时候, 我们希望把给服务器上传的字段封装在一个Model中, 但是经测试发现, 无论使用MJExtension还是YYModel, 还是有这个问题, 这并不是这些第三方框架的问题. 所以使用Model时作为传输媒介时, 也要注意这种问题.
#### 附：
NSDecimalNumber简单介绍

NSDecimalNumber是NSNumber的子类，比NSNumber的功能更为强大，它们被设计为执行基础10计算，而不会损失精度并具有可预测的舍入行为。

苹果官方建议在货币以及要求精度很高的场景下使用NSDecimalNumber

```
+ (instancetype)decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode scale:(short)scale raiseOnExactness:(BOOL)exact raiseOnOverflow:(BOOL)overflow raiseOnUnderflow:(BOOL)underflow raiseOnDivideByZero:(BOOL)divideByZero;

* 参数解析:
* roundingMode
 The rounding mode to use. There are four possible values: NSRoundUp, NSRoundDown, NSRoundPlain, and NSRoundBankers.
* scale
 The number of digits a rounded value should have after its decimal point.
* raiseOnExactness
 If YES, in the event of an exactness error the handler will raise an exception, otherwise it will ignore the error and return control to the calling method.
* raiseOnOverflow
 If YES, in the event of an overflow error the handler will raise an exception, otherwise it will ignore the error and return control to the calling method
* raiseOnUnderflow
 If YES, in the event of an underflow error the handler will raise an exception, otherwise it will ignore the error and return control to the calling method
* raiseOnDivideByZero
 If YES, in the event of a divide by zero error the handler will raise an exception, otherwise it will ignore the error and return control to the calling method

当试图除以0或产生一个数表示太大或太小的时候发生异常。
下面列出了各种异常的名字 表明NSDecimalNumber计算错误。
extern NSString *NSDecimalNumberExactnessException; //如果出现一个精确的错误
extern NSString *NSDecimalNumberOverflowException; // 溢出
extern NSString *NSDecimalNumberUnderflowException; //下溢
extern NSString *NSDecimalNumberDivideByZeroException; //除数为0

typedef NS_ENUM(NSUInteger, NSRoundingMode) {
    NSRoundPlain,   // Round up on a tie
    NSRoundDown,    // Always down == truncate
    NSRoundUp,      // Always up
    NSRoundBankers  // on a tie round so last digit is even
};

NSRoundPlain,   // Round up on a tie ／／四舍五入
NSRoundDown,    // Always down == truncate  ／／只舍不入
NSRoundUp,      // Always up    ／／ 只入不舍
NSRoundBankers 四舍六入, 中间值时, 取最近的,保持保留最后一位为偶数
```



