//
//  LatitudeLongitude.m
//  Jabbure
//
//  Created by Prasad Ankem on 11/4/14.
//  Copyright (c) 2014 Prasad Ankem. All rights reserved.
//

#import "LatitudeLongitude.h"
#import "parseCSV.h"

@interface LatitudeLongitude ()
@end

@implementation LatitudeLongitude

+ (NSArray *)places
{
    static NSArray *_places;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        CSVParser *parser = [CSVParser new];
        [parser openFile:[[NSBundle mainBundle] pathForResource:@"places" ofType:@"csv"]];
        NSMutableArray *csvContent = [parser parseFile];
        
        for (int i = 0; i < [csvContent count]; i++)
        {
            NSLog(@"content of line %d: %@", i, [csvContent objectAtIndex:i]);
        }
                
        _places = @[
                    [NSArray arrayWithObject:@""]
                   ];
    });
    
    return _places;
}

@end
