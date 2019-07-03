//
//  ViewController.m
//  H5RequestLocationAuthority
//
//  Created by long on 16/3/23.
//  Copyright © 2016年 long. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (IBAction)btnLoad_click:(id)sender {
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"requestAuthOnload" withExtension:@"html"];
//    NSURL *url = [NSURL URLWithString:@"https://www.ele.me/place/ww0vvw5s087"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    self.title = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
