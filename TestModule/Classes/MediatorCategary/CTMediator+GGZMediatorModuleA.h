//
//  CTMediator+ModuleA.h
//  Pods-TestModule_Example
//
//  Created by xes on 2020/6/28.
//

#import <TALMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (GGZMediatorModuleA)

- (UIViewController *)GGZMediatorModuleA_getControllerA;

- (id)GGZMediatorModuleA_CalculationFunction:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
