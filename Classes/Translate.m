//
//  Translate.m
//  GoogleDictionary
//
//  Created by Yu Jianjun on 8/10/10.
//  Copyright 2010 Cybercom. All rights reserved.
//

#import "Translate.h"
#import "Connection.h"


@implementation Translate

-(void)executeWithText:(NSString *)text withFromLanguage:(NSString *)from withToLanguage:(NSString *)to {
	Connection *connection = [[Connection alloc] init];
	connection.v = @"1.0";
	connection.from = from;
	connection.to = to;
	connection.q = text;
	[connection start];
}

@end
