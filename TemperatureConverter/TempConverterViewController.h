//
//  TempConverterViewController.h
//  TemperatureConverter
//
//  Created by Vasanthy Kolluri on 1/12/14.
//  Copyright (c) 2014 Vasanthy Kolluri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TempConverterViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *FahTextField;
@property (nonatomic, strong) IBOutlet UITextField *CelTextField;

- (IBAction)Convert:(id)sender;
- (IBAction)FahTextFieldUpdate:(id)sender;
- (IBAction)CelTextFieldUpdate:(id)sender;

@end
