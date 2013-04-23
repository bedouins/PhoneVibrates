//
//  CLViewController.m
//  PhoneVibrates
//
//  Created by Darcy on 4/24/13.
//  Copyright (c) 2013 Darcy Liu. All rights reserved.
//
#import <AudioToolbox/AudioServices.h>
#import "CLViewController.h"

@interface CLViewController ()

@end

@implementation CLViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor underPageBackgroundColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(50, 50, 200, 44);
    [button setTitle:@"Vibrates Alert" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(playAlert:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(50, 150, 200, 44);
    [button2 setTitle:@"Vibrates System" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(playVibrates:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)playAlert:(id)sender
{
    AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
}

- (void)playVibrates:(id)sender
{
    AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
}

@end
