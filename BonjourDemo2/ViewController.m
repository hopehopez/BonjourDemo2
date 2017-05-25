//
//  ViewController.m
//  BonjourDemo2
//
//  Created by 张树青 on 2017/3/22.
//  Copyright © 2017年 zsq. All rights reserved.
//

#import "ViewController.h"
#import "YYClient.h"
@interface ViewController () <YYClientDelegate>
@property (nonatomic, strong) YYClient *client;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.client = [YYClient shareInsatance];
    self.client.delegate = self;
    [self.client strtWithServerName:@"teacher123"];
}

- (void)client:(YYClient *)client receiveMessage:(NSDictionary *)message{
    //NSLog(@"%@", message);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
