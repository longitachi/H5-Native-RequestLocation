//
//  WkWebViewController.m
//  H5RequestLocationAuthority
//
//  Created by long on 2019/7/22.
//  Copyright © 2019 long. All rights reserved.
//

#import "WkWebViewController.h"
#import <WebKit/WebKit.h>

@interface WkWebViewController ()

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation WkWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 60, 30);
    [btn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [btn setTitle:@"load" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 200, self.view.bounds.size.width, 300)];
    [self.view addSubview:self.webView];
}

- (void)btnClick
{
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"requestAuthOnload" withExtension:@"html"];
    //    NSURL *url = [NSURL URLWithString:@"https://www.ele.me/place/ww0vvw5s087"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
