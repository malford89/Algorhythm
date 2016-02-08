//
//  MusicLibrary.h
//  Algorhythm
//
//  Created by Michael Alford on 2/7/16.
//  Copyright © 2016 Michael Alford. All rights reserved.
//

#import <Foundation/Foundation.h>

//declaring constants
extern NSString *const kTitle; //extern makes the variable global.
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface MusicLibrary : NSObject

@property (strong, nonatomic) NSArray *library;

@end
