//
//  ViewController.h
//  testApp
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Tyler Maher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    float firstNumber;
    float secondNumber;
    int operation;
    BOOL op;
    IBOutlet UITextField *answer;
    

}
-(IBAction)getNumber:(id)sender;
-(IBAction)doMath:(id)sender;
-(IBAction)getOperation:(id)sender;
-(IBAction)clear:(id)sender;

@end
