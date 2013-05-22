//
//  StartPaymentViewController.h
//  Mol
//
//  Created by Louis Owusu Manu on 19/05/2013.
//  Copyright (c) 2013 Louis Owusu Manu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StartPaymentViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UILabel *StartPaymentTitleLabel;
@property (weak, nonatomic) IBOutlet NSString *titleString;
@property (weak, nonatomic) IBOutlet UILabel *amountLabel;

- (IBAction)buttonOne:(id)sender;
- (IBAction)buttonTwo:(id)sender;
- (IBAction)buttonThree:(id)sender;
- (IBAction)buttonFour:(id)sender;
- (IBAction)buttonFive:(id)sender;
- (IBAction)buttonSix:(id)sender;
- (IBAction)buttonSeven:(id)sender;
- (IBAction)buttonEight:(id)sender;
- (IBAction)buttonNine:(id)sender;
- (IBAction)buttonZero:(id)sender;
- (IBAction)buttonBackspace:(id)sender;
- (IBAction)buttonZeroZero:(id)sender;
- (IBAction)descriptionAction:(id)sender;
- (IBAction)chargeButtonAction:(id)sender;

@end
