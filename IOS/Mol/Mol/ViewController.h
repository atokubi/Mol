//
//  ViewController.h
//  Mol
//
//  Created by Louis Owusu Manu on 17/05/2013.
//  Copyright (c) 2013 Louis Owusu Manu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)signIn:(id)sender;
- (IBAction)usernameAction:(id)sender;
- (IBAction)passwordAction:(id)sender;

@end
