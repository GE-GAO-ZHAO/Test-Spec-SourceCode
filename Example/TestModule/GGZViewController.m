//
//  GGZViewController.m
//  TestModule
//
//  Created by gegaozhao1126@gmail.com on 06/24/2020.
//  Copyright (c) 2020 gegaozhao1126@gmail.com. All rights reserved.
//

#import "GGZViewController.h"
#import "CTMediator+GGZMediatorModuleA.h"

@interface GGZViewController ()

@property (nonatomic,strong) UIButton *navToModulePageBtn;

@property (nonatomic,strong) UIButton *functionPageBtn;

@end

@implementation GGZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"main page";
    [self.view addSubview:self.navToModulePageBtn];
    [self.view addSubview:self.functionPageBtn];
}

- (void)navToModulePageBtnClicked:(UIButton *)sender {
    UIViewController *vc = [[CTMediator sharedInstance] GGZMediatorModuleA_getControllerA];
    if (vc) {
        [self.navigationController pushViewController:vc animated:YES];
    }
}

- (void)functionPageBtnClicked:(UIButton *)sender {
    NSDictionary *params = @{@"fuctionNum" : @"0", @"firstDigtle" : @"5", @"secondDigtle" : @"6"};
    id res = [[CTMediator sharedInstance] GGZMediatorModuleA_CalculationFunction:params];
    NSLog(@"res:%@ ",res);
}

- (UIButton *)navToModulePageBtn {
    if (!_navToModulePageBtn) {
        _navToModulePageBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
        [_navToModulePageBtn setTitle:@"去moduleA" forState:UIControlStateNormal];
        [_navToModulePageBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_navToModulePageBtn addTarget:self action:@selector(navToModulePageBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _navToModulePageBtn;
}

- (UIButton *)functionPageBtn {
    if (!_functionPageBtn) {
        _functionPageBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
        [_functionPageBtn setTitle:@"计算机功能" forState:UIControlStateNormal];
        [_functionPageBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_functionPageBtn addTarget:self action:@selector(functionPageBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _functionPageBtn;
}



@end
