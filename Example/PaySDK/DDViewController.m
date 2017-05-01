//
//  DDViewController.m
//  PaySDK
//
//  Created by Xinglin0529 on 04/30/2017.
//  Copyright (c) 2017 Xinglin0529. All rights reserved.
//

#import "DDViewController.h"
#import <OSSSecurity.h>
#import <AlipaySDK/AlipaySDK.h>

@interface DDViewController ()

@end

@implementation DDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"______%@", [OSSSecurity secretKey]);
    NSLog(@"______%@", [[AlipaySDK defaultService] currentVersion]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
