//
//  ViewController.m
//  TestRac
//
//  Created by hongbohua on 2018/4/17.
//  Copyright © 2018年 hongbohua. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveObjC.h>//面向信号
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.创建信号   ////********
    //创建一个数组
    RACSubject *subject = [RACSubject subject];
    //2.订阅信号
    //创建一个订阅者!o!
    //将block保存到o里面！！
    //将订阅者保存到第一步创建的数组里面
    [subject subscribeNext:^(id  _Nullable x) {
        NSLog(@"2.接受了信号: %@",x);
    }];
    //3.发送信号
    [subject sendNext:@"哈哈"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
