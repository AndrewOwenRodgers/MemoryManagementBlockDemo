//
//  BlockDelegate.m
//  MemoryManagementHW
//
//  Created by Andrew Rodgers on 2/13/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import "BlockDelegate.h"

@implementation BlockDelegate

-(id)init
{
	self = [super init];
	
	__weak id weakSelf = self;
	__block NSInteger integ = 8;
	
	self.thisIsABlock =
	^void{
		integ = [weakSelf doStuff:integ];
	};
	
	self.thisIsABlock();
	NSLog(@"%d", integ);

	return self;
}

-(NSInteger)doStuff:(NSInteger)integ
{
	integ = integ - 2;
	return integ;
}

@end
