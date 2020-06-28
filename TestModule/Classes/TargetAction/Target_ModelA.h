//
//  Target_ModelA.h
//  Pods-TestModule_Example
//
//  Created by xes on 2020/6/28.
//

#import <Foundation/Foundation.h>
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface Target_ModelA : NSObject

- (UIViewController *)Action_getControllerA:(NSDictionary *)params;

- (NSInteger)Action_calculatorMethodWithDataSource:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
