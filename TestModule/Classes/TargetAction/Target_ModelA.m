//
//  Target_ModelA.m
//  Pods-TestModule_Example
//
//  Created by xes on 2020/6/28.
//

#import "Target_ModelA.h"
#import "GGZModuleAViewControllerA.h"
#import "GGZComputerTool.h"

@interface Target_ModelA()

@property (nonatomic,strong) GGZComputerTool *computerTool;

@end

@implementation Target_ModelA
- (UIViewController *)Action_getControllerA:(NSDictionary *)params {
    return [[GGZModuleAViewControllerA alloc] init];
}

- (NSInteger)Action_calculatorMethodWithDataSource:(NSDictionary *)params {    
    if (!params || ![params objectForKey:@"firstDigtle"] || ![params objectForKey:@"secondDigtle"]) {
        return 0;
    }

    NSInteger fuctionNum = [params objectForKey:@"fuctionNum"] && [[params objectForKey:@"fuctionNum"]  isKindOfClass:[NSString class]] && (NSInteger)[params objectForKey:@"fuctionNum"] >= 0 ? [[params objectForKey:@"fuctionNum"]  integerValue]: 0;

    NSInteger firstDigtle = [[params objectForKey:@"firstDigtle"] integerValue];
    NSInteger secondDigtle = [[params objectForKey:@"secondDigtle"] integerValue];


    switch (fuctionNum) {
        case 0:
            //加法
            return  [GGZComputerTool addWithFirstDigital:firstDigtle secondDigital:secondDigtle];
            break;
        case 1:
            //减法
            return  [GGZComputerTool subtractionWithFirstDigital:firstDigtle secondDigital:secondDigtle];
            break;
        case 2:
            //乘法
            return  [GGZComputerTool multiplicationWithFirstDigital:firstDigtle secondDigital:secondDigtle];
            break;
        case 3:
            //除法
            return  [GGZComputerTool divisionWithFirstDigital:firstDigtle secondDigital:secondDigtle];
            break;
        default:
            //加法
            return  [GGZComputerTool addWithFirstDigital:firstDigtle secondDigital:secondDigtle];
            break;
    }

    return 0;
}

@end
