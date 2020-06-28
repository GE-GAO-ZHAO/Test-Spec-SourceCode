//
//  CTMediator+ModuleA.m
//  Pods-TestModule_Example
//
//  Created by xes on 2020/6/28.
//

#import "CTMediator+GGZMediatorModuleA.h"
#import "TargetActionEnum.h"

@implementation CTMediator (GGZMediatorModuleA)

- (UIViewController *)GGZMediatorModuleA_getControllerA {
   return [self performTarget:kJZBMediatorTargetA action:kJZBMediatorActionNavigationToControllerA params:nil shouldCacheTarget:NO];
}

- (id)GGZMediatorModuleA_CalculationFunction:(NSDictionary *)params {
    return [self performTarget:kJZBMediatorTargetA action:kJZBMediatorActionCalculationFunction params:params shouldCacheTarget:YES];
}

@end
