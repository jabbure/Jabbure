//
//  Place
//  Jabbure
//
//  Created by Prasad Ankem on 11/4/14.
//  Copyright (c) 2014 Prasad Ankem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Place : NSObject

@property(strong) NSString *name;
@property(strong) NSString *street;
@property(strong) NSString *city;
@property(strong) NSString *state;
@property(assign) int zipcode;
@property(assign) float latitude;
@property(assign) float longitude;

-(id)initPlace:(NSString *)name
        street:(NSString *)street
          city:(NSString *)city
         state:(NSString *)state
       zipcode:(int)zipcode
      latitude:(float)latitude
     longitude:(float)longitude;

@end

