//
//  StartPaymentViewController.m
//  Mol
//
//  Created by Louis Owusu Manu on 19/05/2013.
//  Copyright (c) 2013 Louis Owusu Manu. All rights reserved.
//

#import "StartPaymentViewController.h"

@interface StartPaymentViewController ()

@end

@implementation StartPaymentViewController

@synthesize descriptionTextField;
@synthesize titleString;
@synthesize amountLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // initail declaration
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    descriptionTextField.delegate = self;
    [_StartPaymentTitleLabel setText:titleString];
    //[amountLabel setText:@""];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma -mark UITextField delegate method

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)buttonOne:(id)sender {
    if([amountLabel.text isEqualToString:@"00.00"]){
        amountLabel.text =@"";
    }
    if([amountLabel.text length] <= 5){
        amountLabel.text = [amountLabel.text stringByAppendingString:@"1"];
    }
}

- (IBAction)buttonTwo:(id)sender {
    if([amountLabel.text isEqualToString:@"00.00"]){
        amountLabel.text =@"";
    }
    if([amountLabel.text length] <= 5){
        amountLabel.text = [amountLabel.text stringByAppendingString:@"2"];
    }
}

- (IBAction)buttonThree:(id)sender {
    if([amountLabel.text isEqualToString:@"00.00"]){
        amountLabel.text =@"";
    }
    if([amountLabel.text length] <= 5){
        amountLabel.text = [amountLabel.text stringByAppendingString:@"3"];
    }
}

- (IBAction)buttonFour:(id)sender {
    if([amountLabel.text isEqualToString:@"00.00"]){
        amountLabel.text =@"";
    }
    if([amountLabel.text length] <= 5){
        amountLabel.text = [amountLabel.text stringByAppendingString:@"4"];
    }
}

- (IBAction)buttonFive:(id)sender {
    if([amountLabel.text isEqualToString:@"00.00"]){
        amountLabel.text =@"";
    }
    if([amountLabel.text length] <= 5){
        amountLabel.text = [amountLabel.text stringByAppendingString:@"5"];
    }
}

- (IBAction)buttonSix:(id)sender {
    if([amountLabel.text isEqualToString:@"00.00"]){
        amountLabel.text =@"";
    }
    if([amountLabel.text length] <= 5){
        amountLabel.text = [amountLabel.text stringByAppendingString:@"6"];
    }
}

- (IBAction)buttonSeven:(id)sender {
    if([amountLabel.text isEqualToString:@"00.00"]){
        amountLabel.text =@"";
    }
    if([amountLabel.text length] <= 5){
        amountLabel.text = [amountLabel.text stringByAppendingString:@"7"];
    }
}

- (IBAction)buttonEight:(id)sender {
    if([amountLabel.text isEqualToString:@"00.00"]){
        amountLabel.text =@"";
    }
    if([amountLabel.text length] <= 5){
        amountLabel.text = [amountLabel.text stringByAppendingString:@"8"];
    }
}

- (IBAction)buttonNine:(id)sender {
    if([amountLabel.text isEqualToString:@"00.00"]){
        amountLabel.text =@"";
    }
    if([amountLabel.text length] <= 5){
        amountLabel.text = [amountLabel.text stringByAppendingString:@"9"];
    }
}

- (IBAction)buttonZero:(id)sender {
    if([amountLabel.text isEqualToString:@"00.00"]){
        amountLabel.text =@"";
    }
    amountLabel.text = [amountLabel.text stringByAppendingString:@"0"];
}

- (IBAction)buttonBackspace:(id)sender {
    int lengthOfAmount = [amountLabel.text length];
    if (lengthOfAmount>0) {        
         amountLabel.text = [amountLabel.text substringToIndex:([amountLabel.text length]-1)];
    }
}

- (IBAction)buttonZeroZero:(id)sender {
        amountLabel.text = [amountLabel.text stringByAppendingString:@"."];

}

- (IBAction)descriptionAction:(id)sender {
    if([descriptionTextField.text isEqualToString:@"Description"]){
        descriptionTextField.text = nil;
    }
}

- (IBAction)chargeButtonAction:(id)sender {
    if([amountLabel.text length] > 0){
        [self performSegueWithIdentifier:@"chargeSegue" sender:self];
    }
    
}

@end
