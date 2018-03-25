//
//  IHNetworkManager.m
//  Inhual
//
//  Created by PatrickY on 2018/3/26.
//  Copyright © 2018年 runsen. All rights reserved.
//

#import "IHNetworkManager.h"
#import <AFNetworking.h>

static IHNetworkManager *instance = nil;

@implementation IHNetworkManager


+ (instancetype)sharedInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    
    return instance;
}


+(instancetype)allocWithZone:(struct _NSZone *)zone {
    
    return [IHNetworkManager sharedInstance];
}


- (id)copyWithZone:(NSZone *)zone {
    return [IHNetworkManager sharedInstance];
}

@end
