/*
 * cCSVParse, a small CVS file parser
 *
 * © 2007-2014 Jan Weiß, Michael Stapelberg and contributors
 * https://github.com/JanX2/cCSVParse
 *
 * This source code is BSD-licensed, see LICENSE for the complete license.
 *
 */

#import <UIKit/UIKit.h>

@interface CSVParser:NSObject 
-(id)init;

-(BOOL)openFile:(NSString*)fileName;
-(void)closeFile;

-(char)autodetectDelimiter;

-(NSString *)delimiterString;
-(NSString *)endOfLine;

+(NSArray *)supportedDelimiters;
+(NSArray *)supportedDelimiterLocalizedNames;

+(NSArray *)supportedLineEndings;
+(NSArray *)supportedLineEndingLocalizedNames;

-(NSMutableArray*)parseFile;
-(NSMutableArray *)parseData;
-(NSMutableArray *)parseData:(NSData *)data;

@property (copy) NSData *data;

@property (assign) char delimiter;
@property (assign) NSStringEncoding encoding;
@property (assign) BOOL foundQuotedCell;

@property (assign) size_t bufferSize;

@property (assign) BOOL verbose;

@end
