//
//  ViewController.m
//  ctrlTestObjC
//
//  Created by gbn6500 on 2020/08/13.
//  Copyright © 2020 gbn6500. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UILabel *lblTest;
    UIButton *btnTest;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    lblTest = [[UILabel alloc] initWithFrame: CGRectMake(200, 200, 300, 100)];
    [lblTest setText:@"0"];
    [lblTest setFont: [UIFont systemFontOfSize:100]];
    [lblTest setTextColor: [UIColor redColor]];
    [lblTest setTextAlignment: NSTextAlignmentCenter];
    [lblTest setBackgroundColor: [UIColor cyanColor]];
    [self.view addSubview: lblTest];
    
    btnTest = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [btnTest setFrame: CGRectMake(200, 400, 300, 100)];
    [btnTest setTitle: @"inc" forState: UIControlStateNormal];
    [btnTest.titleLabel setFont: [UIFont systemFontOfSize:100]];
    [btnTest setTitleColor: [UIColor blueColor] forState: UIControlStateNormal];
    [btnTest setBackgroundColor: [UIColor yellowColor]];
    [btnTest addTarget:self action:@selector(OnButton:)  forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btnTest];
}

- (void)OnButton: (id)sender
{
    NSString *iStr = [lblTest text];
    int i = (int)[iStr integerValue];
    i++;
    [lblTest setText: [NSString stringWithFormat:@"%d",i]];
}
@end
