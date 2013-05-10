//
//  ViewController1.m
//  TestIOSApp
//
//  Created by Kaven Feng on 5/10/13.
//  Copyright (c) 2013 Kaven Feng. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
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
    
    UIViewController* vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor yellowColor];
    
    [self.navigationController pushViewController:vc animated:YES];
    
}


@end
