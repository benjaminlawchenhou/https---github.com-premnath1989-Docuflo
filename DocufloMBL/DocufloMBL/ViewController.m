//
//  ViewController.m
//  DocufloMBL
//
//  Created by Premnath on 4/20/15.
//  Copyright (c) 2015 tfqnet. All rights reserved.
//

#import "ViewController.h"
#import "pdfView.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize signin,label;
@synthesize UserName,PassWord,scrollView,webView,loginButton;


#define MAX_LENGTH 7

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:225.0f/255.0f green:215.0f/255.0f blue:250.0f/255.0f alpha:1.0f];
    //self.view.backgroundColor = [UIColor colorWithRed:178.0f/255.0f green:177.0f/255.0f blue:177.0f/255.0f alpha:1.0f];
	
//	UIGraphicsBeginImageContext(self.view.frame.size);
//	[[UIImage imageNamed:@"HLB2.png"] drawInRect:self.view.bounds];
//	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//	UIGraphicsEndImageContext();
//	
//	self.view.backgroundColor = [UIColor colorWithPatternImage:image];
	
//	UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 360, 100)];
//	customView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"HLB Logo.png"]];
//	[self.view addSubview:customView];
	
    self.navigationItem.hidesBackButton = YES;

    UserName =[[UITextField alloc]initWithFrame:CGRectMake(self.view.center.x-100, self.view.center.y-120, 220, 50)];
    UserName.borderStyle = UITextBorderStyleRoundedRect;
    UserName.textColor =[UIColor blackColor];
    UserName.font =[UIFont systemFontOfSize:17.0];
    UserName.placeholder =@"USERNAME";
    UserName.backgroundColor =[UIColor whiteColor];
    UserName.keyboardType = UIKeyboardAppearanceDefault;
    UserName.returnKeyType = UIReturnKeyDone;
	UserName.text = @"Eureka";
    [self.view addSubview:UserName];
    UserName.clearButtonMode = UITextFieldViewModeWhileEditing;
    UserName.delegate = self;
    
    PassWord =[[UITextField alloc]initWithFrame:CGRectMake(self.view.center.x-100,self.view.center.y-60, 220, 50)];
    PassWord.borderStyle = UITextBorderStyleRoundedRect;
    PassWord.textColor =[UIColor blackColor];
    PassWord.secureTextEntry = YES;
    PassWord.placeholder =@"PASSWORD";
    PassWord.backgroundColor =[UIColor whiteColor];
    PassWord.keyboardType = UIKeyboardAppearanceDefault;
    PassWord.returnKeyType = UIReturnKeyDone;
    [self.view addSubview:PassWord];
    PassWord.clearButtonMode = UITextFieldViewModeWhileEditing;
    PassWord.delegate = self;
    
    signin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    signin = [[UIButton alloc] initWithFrame:CGRectMake(self.view.center.x-100,self.view.center.y + 5, 220,50)];
    signin.backgroundColor = [UIColor blackColor];
    signin.layer.borderColor = [UIColor blackColor].CGColor;
    signin.layer.borderWidth = 0.5f;
    signin.layer.cornerRadius = 10.0f;
    [signin addTarget:self action:@selector(send) forControlEvents:UIControlEventTouchUpInside];
    [signin setTitle:@"Sign in" forState:UIControlStateNormal];
    signin.highlighted = YES;
    [signin setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:signin];
    
    label =[[UILabel alloc]initWithFrame:CGRectMake(self.view.center.x-150,self.view.center.y-200,520, 70)];
    label.text =@"Docuflo Mobile";
    label.font = [UIFont systemFontOfSize:50];
    //label.textAlignment = UITextAlignmentCenter;
    label.textColor = [UIColor blackColor];//[UIColor colorWithRed:251.0f/255.0f green:238.0f/255.0f blue:215.0f/255.0f alpha:1.0f];
    label.backgroundColor =[UIColor clearColor];
    [self.view addSubview:label];
    
//    label =[[UILabel alloc]initWithFrame:CGRectMake(0,80,320, 70)];
//    label.text =@"U just One step away to chat";
//    label.font = [UIFont systemFontOfSize:20];
//    label.textAlignment = UITextAlignmentCenter;
//    label.textColor = [UIColor blackColor];//[UIColor colorWithRed:251.0f/255.0f green:238.0f/255.0f blue:215.0f/255.0f alpha:1.0f];
//    label.backgroundColor =[UIColor clearColor];
//    [self.view addSubview:label];
    
//    UIButton *chat1 = [[UIButton alloc] initWithFrame:CGRectMake(10,40,10,10)];
//    [chat1 setImage:[UIImage imageNamed:@"close.png"] forState:UIControlStateNormal];
//    [chat1 addTarget:self action:@selector(closeModalViewController) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:chat1];
    
}


- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}
- (void) alertStatus:(NSString *)msg :(NSString *) title
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:msg delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
}

-(void)send
{
//	[[UIApplication sharedApplication] openUR/L:[NSURL URLWithString:@"http://192.168.2.102/DocufloImageViewer/view_LO.aspx"]];
	
//	DocumentViewing *controller = [[DocumentViewing alloc]init];
//	//[controller:self.GroupPb];
//	[self presentViewController:controller animated:YES completion:Nil];


	
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
