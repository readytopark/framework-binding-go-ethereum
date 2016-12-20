//
//  GoEthereumManager.h
//  GoEthereum
//
//  Created by Joe Park on 16/12/2016.
//  Copyright © 2016 Germain Code Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GoEthereumManager : NSObject

+ (instancetype) sharedInstance;
- (NSString *)createAccount:(NSString *)password;

@end
