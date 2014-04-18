//
//  MainViewController.h
//  BuyRIght
//
//  Created by Keith Bailly on 2/27/14.
//  Copyright (c) 2014 KeithMobile. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>




{
    
    //Slider
    int S1;

    __weak IBOutlet UISlider *slider;   // Slider Value //

    
    
    IBOutlet UITextField *tbxLoanAmount;
    IBOutlet UITextField *annualInterestRate;
    IBOutlet UITextField *noOfYears;
    IBOutlet UILabel *monthlyPayment;
    IBOutlet UILabel *totalInterest;
    IBOutlet UILabel *totalPayment;
    

    IBOutlet UILabel *newpercent;
    IBOutlet UILabel *newpayment;
    IBOutlet UILabel *newtotalPayment;
    IBOutlet UILabel *newtotalInterest;
    
    
}

@property (nonatomic,retain) UITextField *tbxLoanAmount;
@property (nonatomic,retain) UITextField *annualInterestRate;
@property (nonatomic,retain) UITextField *noOfYears;
@property (nonatomic,retain) UILabel *monthlyPayment;
@property (nonatomic,retain) UILabel *totalInterest;
@property (nonatomic,retain) UILabel *totalPayment;


@property (nonatomic,retain) UILabel *newpayment;
@property (nonatomic,retain) UILabel *newpercentage;
@property (nonatomic,retain) UILabel *newtotalInterest;
@property (nonatomic,retain) UILabel *newtotalPayment;


-(IBAction) btnCalculate:(id) sender;
-(IBAction) Clear:(id) sender;
-(IBAction) done:(id) sender;
-(IBAction) done2:(id) sender;
-(IBAction) done3:(id) sender;


- (IBAction)applychanges:(id)sender;  // slider  //


@end
