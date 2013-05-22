//
//  PaymentMethodViewController.m
//  Mol
//
//  Created by Louis Owusu Manu on 21/05/2013.
//  Copyright (c) 2013 Louis Owusu Manu. All rights reserved.
//

#import "PaymentMethodViewController.h"

@interface PaymentMethodViewController ()

@end

@implementation PaymentMethodViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)canceButtonAction:(id)sender {
    [self performSegueWithIdentifier:@"returnFromPaymentMethodSegue" sender:self];
}

// write method that will send info to the bluetooth device
// write method that will send info to the bluetooth device
// write method that will send info to the bluetooth device
// write method that will send info to the bluetooth device
// write method that will send info to the bluetooth device


@end
