//
//  BlockDelegate.h
//  MemoryManagementHW
//
//  Created by Andrew Rodgers on 2/13/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlockDelegate : NSObject

@property (strong, nonatomic) void (^thisIsABlock)(void);

@end
