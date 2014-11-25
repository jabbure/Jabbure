//
//  Place.m
//  Jabbure
//
//  Created by Prasad Ankem on 11/4/14.
//  Copyright (c) 2014 Prasad Ankem. All rights reserved.
//

#import "Place.h"

@interface Place ()
@end

@implementation Place

-(id)initPlace:(NSString *)name
        street:(NSString *)street
          city:(NSString *)city
         state:(NSString *)state
       zipcode:(int)zipcode
      latitude:(float)latitude
     longitude:(float)longitude

{
    if ( self = [super init] )
    {
        _name = name;
        _street = street;
        _city = city;
        _state = state;
        _zipcode = zipcode;
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}

@end
