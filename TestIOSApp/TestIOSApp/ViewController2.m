//
//  ViewController2.m
//  TestEmptyApp
//
//  Created by Kaven Feng on 5/10/13.
//  Copyright (c) 2013 Kaven Feng. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
{
    UINavigationBar* navBar;
    int nClicked;
}
@end

@implementation ViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        nClicked = 0;
        
        navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 326, 44)];
        [self.view addSubview:navBar];
        
         
        UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.view addSubview:btn1];
        [btn1 setTitle:@"Create NavItem" forState:UIControlStateNormal];
        btn1.frame = CGRectMake(20, 50, 120, 44);
        [btn1 addTarget:self action:@selector(onBtn1:) forControlEvents:UIControlEventTouchUpInside];
 
        UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.view addSubview:btn2];
        [btn2 setTitle:@"Pop NavItem" forState:UIControlStateNormal];
        btn2.frame = CGRectMake(20, 100, 120, 44);
        [btn2 addTarget:self action:@selector(onBtn2:) forControlEvents:UIControlEventTouchUpInside];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) onCreate1{
    
}

- (void) onBtn1 : (id)sender{
    
    nClicked++;
    
    UINavigationItem* navItem = [[UINavigationItem alloc] initWithTitle: [NSString stringWithFormat:@"Item%d",nClicked]];
    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"Create%d",nClicked] style:UIBarButtonItemStylePlain target:self action:@selector(onCreate1)];
    
    [navBar pushNavigationItem:navItem animated:NO];

}

- (void) onBtn2 : (id)sender{
    
    [navBar popNavigationItemAnimated:YES];
}

@end
