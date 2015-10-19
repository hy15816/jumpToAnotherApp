//
//  ViewController.m
//  JumpToAnotherApp
//
//  Created by AEF-RD-1 on 15/10/19.
//  Copyright (c) 2015年 hyIm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)jumpClick:(UIButton *)sender;
- (IBAction)jumpClick2:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jumpClick:(UIButton *)sender {
    
    NSURL *url = [NSURL URLWithString:@"thisIsAppB://vargss=hyhlj&name=appA"];//
    if ([[UIApplication sharedApplication] canOpenURL:url]) {//if可以打开(本地有)
        [[UIApplication sharedApplication] openURL:url];
    }else{//本地没有，跳转到appstore 下载页面
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://appsto.re/cn/Mg5gx.i"]];
    }
    
    
}

- (IBAction)jumpClick2:(UIButton *)sender {
    
    NSURL *url = [NSURL URLWithString:@"taobao://item.taobao.com/item.htm?spm=a219r.lm895.14.409.IoESeC&id=522036083286&ns=1&abbucket=17"];//
    if ([[UIApplication sharedApplication] canOpenURL:url]) {//if可以打开(本地有)
        [[UIApplication sharedApplication] openURL:url];
    }else{//本地没有，跳转到appstore 下载页面
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://appsto.re/cn/Mg5gx.i"]];
    }
}
@end
