//
//  ViewController.m
//  Mol
//
//  Created by Louis Owusu Manu on 17/05/2013.
//  Copyright (c) 2013 Louis Owusu Manu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize username;
@synthesize password;

- (void)viewDidLoad
{
    [super viewDidLoad];
    username.delegate = self;
    password.delegate = self;
    //get app details and user phone details, model etc
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signIn:(id)sender {
    
    NSString *usernameDefValue = @"Phone Number", *passwordDefVlue = @"Password", *errorMessage=@"Enter ";
    int counter = 0;
    
    if(([username.text isEqual:@""]) || ([username.text isEqualToString:usernameDefValue])){
        counter++;
        errorMessage = [errorMessage stringByAppendingString :@" Phone Number"];
    }
    if(([password.text isEqual:@""]) || ([password.text isEqualToString:passwordDefVlue])){
        if(counter >= 1){
            errorMessage = [errorMessage stringByAppendingString :@" and Password"];
            counter++;
        }else{
            errorMessage = [errorMessage stringByAppendingString: @" Password"];
            counter++;
        }
    }
    //Alert if incorrect username is entered...
    
    if(counter>0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:errorMessage delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        username.text = @"Phone Number";
        password.text = @"Password";
    }
    else{
        [self performSegueWithIdentifier:@"segueToLogin" sender:self];
    }
}

- (IBAction)usernameAction:(id)sender {
    if([username.text isEqualToString:@"Phone Number"]){
        username.text = nil;
    }
}

- (IBAction)passwordAction:(id)sender {
    if([password.text isEqualToString:@"Password"]){
        password.text = nil;
    }
}



#pragma -mark UITextField delegate method

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma - mark method for touch on background

-(IBAction) touchOnBackground{
    [username resignFirstResponder];
    [password resignFirstResponder];
}
@end
