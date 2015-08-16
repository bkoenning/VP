//
//  NumberValue.h
//  VP
//
//  Created by Brandon Koenning on 8/7/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

//#ifndef VP_NumberValue_h
//#define VP_NumberValue_h


//#endif

#import <Foundation/Foundation.h>

#ifndef _NumberValue_h
#define _NumberValue_h

@protocol NumberValue

@required
-(NSString*) valueAsString;
-(NSString*) unitString;

@end


#endif

