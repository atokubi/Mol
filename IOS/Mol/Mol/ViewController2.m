//
//  ViewController2.m
//  Mol
//
//  Created by Louis Owusu Manu on 17/05/2013.
//  Copyright (c) 2013 Louis Owusu Manu. All rights reserved.
//

#import "ViewController2.h"
#import "StartPaymentViewController.h"


@interface ViewController2 ()

@end

@implementation ViewController2


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier  isEqualToString:@"processWalletPaymentSegue"]) {
        NSString *titleToStartPayment =@"Mobile Wallet Payment";
        StartPaymentViewController *strtPaymentVC = [segue destinationViewController];
        strtPaymentVC.titleString = titleToStartPayment;
    }else if ([segue.identifier  isEqualToString:@"cardPaymentSegue"]) {
        NSString *titleToStartPayment =@"Card Payment";
        StartPaymentViewController *strtPaymentVC = [segue destinationViewController];
        strtPaymentVC.titleString = titleToStartPayment;
    }

}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
