//
//  ViewController.m
//  testApp
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Tyler Maher. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController;


- (IBAction)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)getNumber:(id)sender;
{
    NSLog(@"%ld", (long)[sender tag]);
    
    if(op)
    {
        secondNumber = secondNumber*10+(float)[sender tag];
        answer.text = [NSString stringWithFormat:@"%3.2f", secondNumber];
        op = false;
    }
    else
    {
        firstNumber = firstNumber*10 + (float)[sender tag];
        answer.text = [NSString stringWithFormat:@"%3.2f", firstNumber];
                                               
    }
}
- (IBAction)doMath:(id)sender
{
    switch(operation)
    {
        case 0:
            answer.text = [NSString stringWithFormat:@"%3.2f", (firstNumber+ secondNumber)];
            break;
        case 1:
            answer.text = [NSString stringWithFormat:@"%3.2f",(firstNumber - secondNumber)];
            break;
        case 2:
            answer.text = [NSString stringWithFormat:@"%3.2f",(firstNumber * secondNumber)];
            break;
        case 3:
            answer.text = [NSString stringWithFormat:@"%3.2f",(firstNumber / secondNumber)];
            break;
    }
    firstNumber=0;
    secondNumber=0;
   
        
}


-(IBAction)getOperation:(id)sender
{
    operation = [sender tag];
    answer.text = [NSString stringWithFormat:@""];
    op = TRUE;
}
-(IBAction)clear:(id)sender
{
    firstNumber=0;
    secondNumber=0;
    answer.text=[NSString stringWithFormat:@""];
}


@end
