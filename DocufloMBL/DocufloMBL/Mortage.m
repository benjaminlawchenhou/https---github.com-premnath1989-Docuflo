//
//  Mortage.m
//  DocufloMBL
//
//  Created by Premnath on 4/23/15.
//  Copyright (c) 2015 tfqnet. All rights reserved.
//

#import "Mortage.h"
#import "pdfView.h"


@implementation Mortage
@synthesize label;

-(void) viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:178.0f/255.0f green:177.0f/255.0f blue:177.0f/255.0f alpha:1.0f];
    UIButton *Close;
    Close= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Close = [[UIButton alloc] initWithFrame:CGRectMake(150, 15, 299, 30)];
    Close.backgroundColor = [UIColor blackColor];
    Close.layer.borderColor = [UIColor blackColor].CGColor;
    Close.layer.borderWidth = 0.5f;
    Close.layer.cornerRadius = 10.0f;
    [Close addTarget:self action:@selector(LogOut) forControlEvents:UIControlEventTouchUpInside];
    [Close setTitle:@"Close" forState:UIControlStateNormal];
    Close.highlighted = YES;
    [Close setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:Close];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, 299, 30)];
    label.text =@"Image Viewer";
    label.font =[UIFont systemFontOfSize:20];
    label.textColor = [UIColor blackColor];
    label.backgroundColor=[UIColor clearColor];
    [self.view addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 520, 500)];
    label.textColor = [UIColor blackColor];
    label.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(11, 50, 515, 30)];
    label.textColor = [UIColor blackColor];
    label.backgroundColor=[UIColor blackColor];
    [self.view addSubview:label];
    
   
    label = [[UILabel alloc] initWithFrame:CGRectMake(11, 51, 519, 50)];
    label.text =@" Doc Type                       Doc Status              Receive Date             Scanned By ";
    label.font =[UIFont systemFontOfSize:13];
    label.textColor = [UIColor whiteColor];
    label.backgroundColor=[UIColor blackColor];
    [self.view addSubview:label];
    
    UILabel*label1;
    label1 = [[UILabel alloc] initWithFrame:CGRectMake(11, 102, 519, 50)];
    label1.text =@" APPLICATION FORM            RECEIVED                     4/22/2015                      WORKFLOW/JACOB ";
    label1.font =[UIFont systemFontOfSize:11];
    label1.textColor = [UIColor whiteColor];
    label1.backgroundColor=[UIColor grayColor];
    [self.view addSubview:label1];

    UILabel*label2;
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(11, 153, 519, 50)];
    label2.text =@" CUSTOMER IC                    RECEIVED                      4/22/2015                       WORKFLOW/JACOB ";
    label2.font =[UIFont systemFontOfSize:11];
    label2.textColor = [UIColor whiteColor];
    label2.backgroundColor=[UIColor grayColor];
    [self.view addSubview:label2];

    UILabel*label3;
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(11, 204, 519, 50)];
    label3.text =@" ID GUARANTOR                   RECEIVED                     4/23/2015                        WORKFLOW/JACOB ";
    label3.font =[UIFont systemFontOfSize:11];
    label3.textColor = [UIColor whiteColor];
    label3.backgroundColor=[UIColor grayColor];
    [self.view addSubview:label3];
    
    UILabel*label4;
    label4 = [[UILabel alloc] initWithFrame:CGRectMake(11, 255, 519, 50)];
    label4.text =@" APPLICATION FORM            RECEIVED                     4/22/2015                      WORKFLOW/JACOB ";
    label4.font =[UIFont systemFontOfSize:11];
    label4.textColor = [UIColor whiteColor];
    label4.backgroundColor=[UIColor grayColor];
    [self.view addSubview:label4];
    
    UILabel*label5;
    label5 = [[UILabel alloc] initWithFrame:CGRectMake(11, 306, 519, 50)];
    label5.text =@" CUSTOMER IC                    RECEIVED                      4/22/2015                       WORKFLOW/JACOB ";
    label5.font =[UIFont systemFontOfSize:11];
    label5.textColor = [UIColor whiteColor];
    label5.backgroundColor=[UIColor grayColor];
    [self.view addSubview:label5];
    
    
    UILabel*label6;
    label6 = [[UILabel alloc] initWithFrame:CGRectMake(11, 357, 519, 50)];
    label6.text =@" ID GUARANTOR                   RECEIVED                     4/23/2015                        WORKFLOW/JACOB ";
    label6.font =[UIFont systemFontOfSize:11];
    label6.textColor = [UIColor whiteColor];
    label6.backgroundColor=[UIColor grayColor];
    [self.view addSubview:label6];
    
    UILabel*label7;
    label7 = [[UILabel alloc] initWithFrame:CGRectMake(11, 408, 519, 50)];
    label7.text =@" CUSTOMER IC                    RECEIVED                      4/22/2015                       WORKFLOW/JACOB ";
    label7.font =[UIFont systemFontOfSize:11];
    label7.textColor = [UIColor whiteColor];
    label7.backgroundColor=[UIColor grayColor];
    [self.view addSubview:label7];
    
    
    UILabel*label8;
    label8 = [[UILabel alloc] initWithFrame:CGRectMake(11, 459, 519, 50)];
    label8.text =@" ID GUARANTOR                   RECEIVED                     4/23/2015                        WORKFLOW/JACOB ";
    label8.font =[UIFont systemFontOfSize:11];
    label8.textColor = [UIColor whiteColor];
    label8.backgroundColor=[UIColor grayColor];
    [self.view addSubview:label8];

    label8.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap)];
    [label8 addGestureRecognizer:tapGesture];

    

}

- (void)LogOut
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void) labelTap
{
    //[self dismissModalViewControllerAnimated:YES];
    
    
    NSUserDefaults *pdfURL = [NSUserDefaults standardUserDefaults];
    [pdfURL setObject:@"http://192.168.0.103/mobiledoc/hf00001.pdf" forKey:@"URL"];
    
    pdfView *viewController = [[pdfView alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}


@end
