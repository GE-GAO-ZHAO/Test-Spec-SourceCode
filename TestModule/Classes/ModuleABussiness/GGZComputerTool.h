//
//  GGZComputerTool.h
//  Pods-TestModule_Example
//
//  Created by xes on 2020/6/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GGZComputerTool : NSObject


/// V1.0.0
+ (NSInteger)addWithFirstDigital:(NSInteger)firstDigital secondDigital:(NSInteger)secondDigital;
+ (NSInteger)subtractionWithFirstDigital:(NSInteger)firstDigital secondDigital:(NSInteger)secondDigital;

/// V2.0.0
+ (NSInteger)multiplicationWithFirstDigital:(NSInteger)firstDigital secondDigital:(NSInteger)secondDigital;
+ (NSInteger)divisionWithFirstDigital:(NSInteger)firstDigital secondDigital:(NSInteger)secondDigital;


@end

NS_ASSUME_NONNULL_END
