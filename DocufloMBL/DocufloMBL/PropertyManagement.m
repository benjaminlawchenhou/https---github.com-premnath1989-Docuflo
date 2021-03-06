//
//  PropertyManagement.m
//  DocufloMBL
//
//  Created by Premnath on 4/23/15.
//  Copyright (c) 2015 tfqnet. All rights reserved.
//

#import "PropertyManagement.h"
#import "pdfView.h"

@implementation PropertyManagement
@synthesize label;

-(void) viewDidLoad
{
    [super viewDidLoad];
    
    
    UIGraphicsBeginImageContext(CGSizeMake(1900, 1524));
    //   [drawImage.image drawInRect:CGRectMake(0, 0, 560, 660)];
    //
    [[UIImage imageNamed:@"ipad_bg_4.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    UIButton *product= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    product = [[UIButton alloc] initWithFrame:CGRectMake(480, 0, 50, 60)];
    UIImage *productImg = [UIImage imageNamed:@"home.png"];
    [product setImage:productImg forState:UIControlStateNormal];
    [product addTarget:self action:@selector(LogOut) forControlEvents:UIControlEventTouchUpInside];
    //  [product setTitle:@"Product" forState:UIControlStateNormal];
    product.highlighted = YES;
    [product setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:product];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, 299, 30)];
    label.text =@"Image Viewer";
    label.font =[UIFont systemFontOfSize:20];
    label.textColor = [UIColor blackColor];
    label.backgroundColor=[UIColor clearColor];
    [self.view addSubview:label];
    //
    //    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 520, 500)];
    //    label.textColor = [UIColor blackColor];
    //    label.backgroundColor=[UIColor whiteColor];
    //    [self.view addSubview:label];
    
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
    label1.text =@" DELIVERY ORDER                 RECEIVED                     4/22/2015                      WORKFLOW ";
    label1.font =[UIFont systemFontOfSize:11];
    label1.textColor = [UIColor whiteColor];
    label1.backgroundColor=[[UIColor grayColor] colorWithAlphaComponent:0.5f];
    [self.view addSubview:label1];
    
    UILabel*label2;
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(11, 153, 519, 50)];
    label2.text =@" ASSET LOCATION                 RECEIVED                      4/22/2015                      WORKFLOW ";
    label2.font =[UIFont systemFontOfSize:11];
    label2.textColor = [UIColor whiteColor];
    label2.backgroundColor=[[UIColor grayColor] colorWithAlphaComponent:0.5f];
    [self.view addSubview:label2];
    
    UILabel*label3;
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(11, 204, 519, 50)];
    label3.text =@" PURCHASE ORDER               RECEIVED                     4/23/2015                      WORKFLOW ";
    label3.font =[UIFont systemFontOfSize:11];
    label3.textColor = [UIColor whiteColor];
    label3.backgroundColor=[[UIColor grayColor] colorWithAlphaComponent:0.5f];
    [self.view addSubview:label3];
    
    UILabel*label4;
    label4 = [[UILabel alloc] initWithFrame:CGRectMake(11, 255, 519, 50)];
    label4.text =@" LETTER                                  RECEIVED                     4/22/2015                      WORKFLOW ";
    label4.font =[UIFont systemFontOfSize:11];
    label4.textColor = [UIColor whiteColor];
    label4.backgroundColor=[[UIColor grayColor] colorWithAlphaComponent:0.5f];
    [self.view addSubview:label4];
    
//    UILabel*label5;
//    label5 = [[UILabel alloc] initWithFrame:CGRectMake(11, 306, 519, 50)];
//    label5.text =@" STATEMENT 6 MONTHS        RECEIVED                     4/22/2015                      WORKFLOW ";
//    label5.font =[UIFont systemFontOfSize:11];
//    label5.textColor = [UIColor whiteColor];
//    label5.backgroundColor=[[UIColor grayColor] colorWithAlphaComponent:0.5f];
//    [self.view addSubview:label5];
//    
//    
//    UILabel*label6;
//    label6 = [[UILabel alloc] initWithFrame:CGRectMake(11, 357, 519, 50)];
//    label6.text =@" FORM 9/24/49                        RECEIVED                    4/23/2015                      WORKFLOW ";
//    label6.font =[UIFont systemFontOfSize:11];
//    label6.textColor = [UIColor whiteColor];
//    label6.backgroundColor=[[UIColor grayColor] colorWithAlphaComponent:0.5f];
//    [self.view addSubview:label6];
//    
//    UILabel*label7;
//    label7 = [[UILabel alloc] initWithFrame:CGRectMake(11, 408, 519, 50)];
//    label7.text =@" SALARY CREDITING              RECEIVED                     4/22/2015                       WORKFLOW ";
//    label7.font =[UIFont systemFontOfSize:11];
//    label7.textColor = [UIColor whiteColor];
//    label7.backgroundColor=[[UIColor grayColor] colorWithAlphaComponent:0.5f];
//    [self.view addSubview:label7];
//    
//    
//    UILabel*label8;
//    label8 = [[UILabel alloc] initWithFrame:CGRectMake(11, 459, 519, 50)];
//    label8.text =@" INCOME TAX FORM               RECEIVED                     4/23/2015                        WORKFLOW/ ";
//    label8.font =[UIFont systemFontOfSize:11];
//    label8.textColor = [UIColor whiteColor];
//    label8.backgroundColor=[[UIColor grayColor] colorWithAlphaComponent:0.5f];
//    [self.view addSubview:label8];
	
    
    label1.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture1 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap1)];
    [label1 addGestureRecognizer:tapGesture1];
    
    label2.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture2 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap2)];
    [label2 addGestureRecognizer:tapGesture2];
    
    label3.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture3 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap3)];
    [label3 addGestureRecognizer:tapGesture3];
    
    label4.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture4 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap4)];
    [label4 addGestureRecognizer:tapGesture4];
    
//    label5.userInteractionEnabled = YES;
//    UITapGestureRecognizer *tapGesture5 =
//    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap5)];
//    [label5 addGestureRecognizer:tapGesture5];
//    
//    label6.userInteractionEnabled = YES;
//    UITapGestureRecognizer *tapGesture6 =
//    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap6)];
//    [label6 addGestureRecognizer:tapGesture6];
//    
//    label7.userInteractionEnabled = YES;
//    UITapGestureRecognizer *tapGesture7 =
//    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap7)];
//    [label7 addGestureRecognizer:tapGesture7];
//    
//    label8.userInteractionEnabled = YES;
//    UITapGestureRecognizer *tapGesture8 =
//    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap8)];
//    [label8 addGestureRecognizer:tapGesture8];
	
    
    
}

- (void)LogOut
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void) labelTap1
{
    //[self dismissModalViewControllerAnimated:YES];
    
    
    NSUserDefaults *pdfURL = [NSUserDefaults standardUserDefaults];
    [pdfURL setObject:@"http://192.168.0.103/mobiledoc/pm000001.pdf" forKey:@"URL"];
    
    pdfView *viewController = [[pdfView alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void) labelTap2
{
    //[self dismissModalViewControllerAnimated:YES];
    
    
    NSUserDefaults *pdfURL = [NSUserDefaults standardUserDefaults];
    [pdfURL setObject:@"http://192.168.0.103/mobiledoc/pm000002.pdf" forKey:@"URL"];
    
    pdfView *viewController = [[pdfView alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void) labelTap3
{
    //[self dismissModalViewControllerAnimated:YES];
    
    
    NSUserDefaults *pdfURL = [NSUserDefaults standardUserDefaults];
    [pdfURL setObject:@"http://192.168.0.103/mobiledoc/pm000003.pdf" forKey:@"URL"];
    
    pdfView *viewController = [[pdfView alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void) labelTap4
{
    //[self dismissModalViewControllerAnimated:YES];
    
    
    NSUserDefaults *pdfURL = [NSUserDefaults standardUserDefaults];
    [pdfURL setObject:@"http://192.168.0.103/mobiledoc/pm000004.pdf" forKey:@"URL"];
    
    pdfView *viewController = [[pdfView alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void) labelTap5
{
    //[self dismissModalViewControllerAnimated:YES];
    
    
    NSUserDefaults *pdfURL = [NSUserDefaults standardUserDefaults];
    [pdfURL setObject:@"http://192.168.0.103/mobiledoc/pm000005.pdf" forKey:@"URL"];
    
    pdfView *viewController = [[pdfView alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void) labelTap6
{
    //[self dismissModalViewControllerAnimated:YES];
    
    
    NSUserDefaults *pdfURL = [NSUserDefaults standardUserDefaults];
    [pdfURL setObject:@"http://192.168.0.103/mobiledoc/pm000006.pdf" forKey:@"URL"];
    
    pdfView *viewController = [[pdfView alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void) labelTap7
{
    //[self dismissModalViewControllerAnimated:YES];
    
    
    NSUserDefaults *pdfURL = [NSUserDefaults standardUserDefaults];
    [pdfURL setObject:@"http://192.168.0.103/mobiledoc/pm000007.pdf" forKey:@"URL"];
    
    pdfView *viewController = [[pdfView alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void) labelTap8
{
    //[self dismissModalViewControllerAnimated:YES];
    
    
    NSUserDefaults *pdfURL = [NSUserDefaults standardUserDefaults];
    [pdfURL setObject:@"http://192.168.0.103/mobiledoc/pm000008.pdf" forKey:@"URL"];
    
    pdfView *viewController = [[pdfView alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}


@end
