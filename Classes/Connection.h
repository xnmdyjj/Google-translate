//
//  Connection.h
//  GoogleDictionary
//
//  Created by Yu Jianjun on 8/10/10.
//  Copyright 2010 Cybercom. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Connection : NSObject {
	NSString *q;
	NSString *from;
	NSString *to;
	NSString *v;
	NSMutableData *receivedData;
}

@property (nonatomic, copy) NSString *q;
@property (nonatomic, copy) NSString *from;
@property (nonatomic, copy) NSString *to;
@property (nonatomic, copy) NSString *v;

-(void)start;
@end
