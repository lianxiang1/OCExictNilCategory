//
//  ViewController.m
//  OCAvoidNilCategory
//
//  Created by lianxiang on 2017/9/15.
//  Copyright © 2017年 lianxiangpro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        NSString *phone = @"11111";
        NSString *userPassword = @"2222";
        NSString *loginType = @"ios";
        NSString *jPushRegistId = nil;
        NSString *token = @"saswdxd";
    
      NSDictionary *params = @{
                   @"phoneNumber":phone,
                   @"userPassword":userPassword,
                   @"loginType":loginType,
                   @"jiguangUserid":jPushRegistId,
                   @"token":token
                   };
    
        NSLog(@"params****%@\n",params);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
