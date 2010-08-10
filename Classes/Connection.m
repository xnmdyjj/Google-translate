//
//  Connection.m
//  GoogleDictionary
//
//  Created by Yu Jianjun on 8/10/10.
//  Copyright 2010 Cybercom. All rights reserved.
//

#import "Connection.h"


static NSString *const URL = @"http://ajax.googleapis.com/ajax/services/language/translate";
static NSString *const PARAMETERS = @"v=1.0&langpair=#FROM#%7C#TO#&q=";



@implementation Connection

@synthesize q;
@synthesize from;
@synthesize to;
@synthesize v;


-(id) init {
	if (self = [super init]) {
		
	}
	return self;
}
	
-(void)start{
	
	
	NSString *parameters = [[PARAMETERS stringByReplacingOccurrencesOfString:@"#FROM#" withString:from] 
							stringByReplacingOccurrencesOfString:@"#TO#" withString:to];
	NSString *url = [URL stringByAppendingFormat:@"?%@", [parameters stringByAppendingString:q]];
	
	// Create the request.
	
	NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:url]
							  
											  cachePolicy:NSURLRequestUseProtocolCachePolicy
							  
										  timeoutInterval:60.0];
	
	// create the connection with the request
	
	// and start loading the data
	
	NSURLConnection *theConnection=[[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
	
	if (theConnection) {
		
		// Create the NSMutableData to hold the received data.
		
		// receivedData is an instance variable declared elsewhere.
		
		receivedData = [[NSMutableData data] retain];
		
	} else {
		
		// Inform the user that the connection failed.
		
	}
	
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response

{
	
    // This method is called when the server has determined that it
	
    // has enough information to create the NSURLResponse.
	
	
	
    // It can be called multiple times, for example in the case of a
	
    // redirect, so each time we reset the data.
	
	
	
    // receivedData is an instance variable declared elsewhere.
	
    [receivedData setLength:0];
	
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data

{
	
    // Append the new data to receivedData.
	
    // receivedData is an instance variable declared elsewhere.
	
    [receivedData appendData:data];
	
}


- (void)connection:(NSURLConnection *)connection

  didFailWithError:(NSError *)error

{
	
    // release the connection, and the data object
	
    [connection release];
	
    // receivedData is declared as a method instance elsewhere
	
    [receivedData release];
	
	
	
    // inform the user
	
    NSLog(@"Connection failed! Error - %@ %@",
		  
          [error localizedDescription],
		  
          [[error userInfo] objectForKey:NSErrorFailingURLStringKey]);
	
}


- (void)connectionDidFinishLoading:(NSURLConnection *)connection

{
	
    // do something with the data
	
    // receivedData is declared as a method instance elsewhere
	
    NSLog(@"Succeeded! Received %d bytes of data",[receivedData length]);
	
	
	
    // release the connection, and the data object
	
    [connection release];
	
    [receivedData release];
	
}

-(void)dealloc {
	[q release];
	[v release];
	[from release];
	[to release];
	[super dealloc];
}

@end
