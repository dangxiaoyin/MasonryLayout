//
//  ViewController.m
//  MasonryDemo
//
//  Created by 1 on 15/9/24.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    不再frame使用进行适配
    
    UIView *gView = [UIView new];
    gView.backgroundColor = [UIColor greenColor];
    gView.alpha = 0.6;
    [self.view addSubview:gView];
    //设置约束时，首先将view添加到父视图上
    [gView mas_makeConstraints:^(MASConstraintMaker *make) {
        //offset偏移量
        //默认当对于父视图
        make.top.offset(0);
        make.left.offset(10);
        make.right.offset(-10);
        make.height.offset(64);
    }];
    
    UIView *bView = [UIView new];
    bView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:bView];
    
    [bView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(20);
        make.left.offset(20);
        make.right.offset(-20);
        make.bottom.offset(-20);
    }];


    UIView *oView = [UIView new];
    oView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:oView];
    
    
    UIView *rView = [UIView new];
    rView.backgroundColor = [UIColor redColor];
    [self.view addSubview:rView];
    
    //添加一个新的约束
    [oView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(40);
        make.bottom.offset(-40);
        make.left.offset(40);
        make.width.equalTo(rView.mas_width);
        make.right.equalTo(rView.mas_left).offset(-20);
        
    }];
    
    
    [rView mas_makeConstraints:^(MASConstraintMaker *make)
    {
        make.top.offset(40);
        make.bottom.offset(-40);
        make.right.offset(-40);
        make.width.equalTo(oView.mas_width);
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
