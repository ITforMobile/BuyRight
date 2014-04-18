//
//  MainViewController.m
//  BuyRIght
//
//  Created by Keith Bailly on 2/27/14.
//  Copyright (c) 2014 KeithMobile. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize tbxLoanAmount;
@synthesize annualInterestRate;
@synthesize noOfYears;
@synthesize monthlyPayment;
@synthesize totalInterest;
@synthesize totalPayment;
@synthesize newpercentage;
@synthesize newpayment;
@synthesize newtotalPayment;
@synthesize newtotalInterest;



-(IBAction) btnCalculate:(id) sender{
    
    double loanAmount = [tbxLoanAmount.text doubleValue];
    double intRate = [annualInterestRate.text doubleValue];
    double years = [noOfYears.text doubleValue];
    
    double r = intRate/1200; // to optimize to handle different payment periods
    double n = years * 12;
    double rPower = pow(1+r,n);
    
    double paymentAmt = loanAmount * r * rPower / (rPower - 1);
    double totalPaymentd = paymentAmt * n;
    double totalInterestd = totalPaymentd - loanAmount;
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [numberFormatter setMaximumFractionDigits:2];
    
    NSNumber *n1 = [NSNumber numberWithDouble:paymentAmt];
    NSNumber *n2 = [NSNumber numberWithDouble:totalPaymentd];
    NSNumber *n3 = [NSNumber numberWithDouble:totalInterestd];
    
    NSString *paymentAmtString = [numberFormatter stringFromNumber:n1];
    
    monthlyPayment.text = paymentAmtString;
    
    NSString *totalInterestString =[numberFormatter stringFromNumber:n3];
    
    totalInterest.text = totalInterestString;
    
    NSString *totalPaymentString =[numberFormatter stringFromNumber:n2];
    
    totalPayment.text = totalPaymentString;
    
}





- (IBAction)applychanges:(id)sender {
    int S1 = (int)(slider.value);
    

    
    double intRate = [annualInterestRate.text doubleValue];
    double XY = (S1*.025) + intRate;
    
    double loanAmount = [tbxLoanAmount.text doubleValue];
    double years = [noOfYears.text doubleValue];
    
    
    double r = XY/1200; // to optimize to handle different payment periods
    double n = years * 12;
    double rPower = pow(1+r,n);
    

    newpercent.text = [NSString stringWithFormat:@"%.2F",XY];

    double paymentAmt = loanAmount * r * rPower / (rPower - 1);
    double totalPaymentd = paymentAmt * n;
    double totalInterestd = totalPaymentd - loanAmount;
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [numberFormatter setMaximumFractionDigits:2];
    
    NSNumber *n4 = [NSNumber numberWithDouble:paymentAmt];
    NSNumber *n5 = [NSNumber numberWithDouble:totalPaymentd];
    NSNumber *n6 = [NSNumber numberWithDouble:totalInterestd];
    
    NSString *paymentAmtString = [numberFormatter stringFromNumber:n4];
    
    newpayment.text = paymentAmtString;
    
    NSString *totalInterestString =[numberFormatter stringFromNumber:n6];
    
    newtotalInterest.text = totalInterestString;
    
    NSString *totalPaymentString =[numberFormatter stringFromNumber:n5];
    
    newtotalPayment.text = totalPaymentString;
    
}






- (IBAction)done:(id)sender {
    
    [sender resignFirstResponder];
    
    
}

- (IBAction)done3:(id)sender {

    [sender resignFirstResponder];
}

- (IBAction)done2:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)clear:(id)sender {
    
        
        monthlyPayment.text = @"";
        totalInterest.text = @"";
        totalPayment.text = @"";
        newpercent.text = @"";
        tbxLoanAmount.text = @"";
        annualInterestRate.text = @"";
        noOfYears.text = @"";
        newtotalPayment.text = @"";
        newpayment.text = @"";
        newtotalInterest.text = @"";
        slider.value = 0;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
