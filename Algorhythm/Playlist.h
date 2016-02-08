//
//  Playlist.h
//  Algorhythm
//
//  Created by Michael Alford on 2/7/16.
//  Copyright © 2016 Michael Alford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h> //connect UIImage

@interface Playlist : NSObject

@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong, nonatomic) UIImage *playlistIconLarge;
@property (strong, nonatomic) NSArray *playlistArtists;
@property (strong, nonatomic) UIColor *backgroundColor;

//this exposes the method to any other class that accesses the playlist class.
- (instancetype)initWithIndex:(NSUInteger)index;

@end
