//
//  TempConverterViewController.m
//  TemperatureConverter
//
//  Created by Vasanthy Kolluri on 1/12/14.
//  Copyright (c) 2014 Vasanthy Kolluri. All rights reserved.
//

#import "TempConverterViewController.h"

@interface TempConverterViewController ()

- (void) updateValues;

@end

@implementation TempConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Temperature";
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.FahTextField.keyboardType = UIKeyboardTypeDecimalPad;
    self.CelTextField.keyboardType = UIKeyboardTypeDecimalPad;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updateValues {
    float tempF = 0;
    float tempC = 0;
    
    
    
    if (self.CelTextField.text.length > 0) {
        tempC = [self.CelTextField.text floatValue];
    }
    
    if (self.FahTextField.text.length > 0) {
        tempF = [self.FahTextField.text floatValue];
    }
    if (tempF) {
        float x = (tempF - 32.0f) * (5.0f/9.0f);
        [self.CelTextField setText:[NSString stringWithFormat:@"%3.2f", x]];
    } else if (tempC) {
        float x = (tempC * (9.0f/5.0f)) + 32.0f;
        [self.FahTextField setText:[NSString stringWithFormat:@"%3.2f", x]];
    }
    
}

- (IBAction)Convert:(id)sender {
    [self updateValues];
}
@end
