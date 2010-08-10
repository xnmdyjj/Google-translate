//
//  Translate.h
//  GoogleDictionary
//
//  Created by Yu Jianjun on 8/10/10.
//  Copyright 2010 Cybercom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Translate : NSObject {

}



-(void)executeWithText:(NSString *)text withFromLanguage:(NSString *)from withToLanguage:(NSString *) to;

@end
