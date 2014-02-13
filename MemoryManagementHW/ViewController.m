//
//  ViewController.m
//  MemoryManagementHW
//
//  Created by Andrew Rodgers on 2/13/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import "ViewController.h"
#import "BlockDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	char *cString = malloc(9 * sizeof(char));
	cString[0] = 'R';
	cString[1] = 'o';
	cString[2] = 'd';
	cString[3] = 'g';
	cString[4] = 'e';
	cString[5] = 'r';
	cString[6] = 's';
	cString[7] = '!';
	cString[8] = '\0';
	
	for (int i = 0; i < 8; i++)
	{
		NSLog(@"%c", cString[i]);
	}
	NSLog(@"%s", cString);
	
	cString[0] = 'B';
	cString[1] = 'a';
	cString[2] = 'r';
	cString[3] = 'n';
	cString[4] = 'a';
	cString[5] = 'r';
	cString[6] = 'd';
	cString[7] = '!';
	
	for (int i = 0; i < 8; i++)
	{
		NSLog(@"%c", cString[i]);
	}
	NSLog(@"%s", cString);
	free(cString);
	
	BlockDelegate *blockDelegate = [[BlockDelegate alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
