//
//  ViewController.m
//  3DTouchTest
//
//  Created by changit on 2016/11/1.
//  Copyright © 2016年 changit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSString *string = @"shareLink: http://www.baidu.com";
    
    UIActivityViewController *activity = [[UIActivityViewController alloc] initWithActivityItems:@[string] applicationActivities:nil];
    
    activity.excludedActivityTypes = @[UIActivityTypePrint];
    
   
    UIViewController *rootViewcontroller = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    [rootViewcontroller presentViewController:activity animated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
