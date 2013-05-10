//
//  ViewController1.m
//  TestIOSApp
//
//  Created by Kaven Feng on 5/10/13.
//  Copyright (c) 2013 Kaven Feng. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()
{
    int nClicked;
}
@end

@implementation ViewController1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        nClicked = 0;
        
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"Create%d",1] style:UIBarButtonItemStylePlain target:self action:@selector(onCreate1:)];
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) onCreate1 : (id)sender{
    
    nClicked++;
    
    UIViewController* vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor yellowColor];
    vc.title = [NSString stringWithFormat:@"VC%d",nClicked];
    
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [vc.view addSubview:btn2];
    [btn2 setTitle:[NSString stringWithFormat:@"VC%d",nClicked] forState:UIControlStateNormal];
    btn2.frame = CGRectMake(20, 100, 120, 44);
    [btn2 addTarget:self action:@selector(onCreate1:) forControlEvents:UIControlEventTouchUpInside];

    
    [self.navigationController pushViewController:vc animated:YES];
    
}


@end
