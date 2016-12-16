//
//  GoEthereumManager.m
//  GoEthereum
//
//  Created by Joe Park on 16/12/2016.
//  Copyright © 2016 Germain Code Inc. All rights reserved.
//

#import "GoEthereumManager.h"
#import <Statusgo/Statusgo.h>

@implementation GoEthereumManager

static GoEthereumManager* sInstance;

+ (instancetype) sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sInstance = [[self alloc] init];
        NSLog(@"%@ is the sharedInstance", sInstance);
    });
    
    return sInstance;
}

+ (NSString *)createAccount:(NSString *)password {
    char * result = CreateAccount((char *) [password UTF8String]);
    
    return [NSString stringWithUTF8String:result];
}

@end
