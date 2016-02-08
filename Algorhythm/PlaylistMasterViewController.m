//
//  ViewController.m
//  Algorhythm
//
//  Created by Michael Alford on 2/7/16.
//  Copyright © 2016 Michael Alford. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h" //allows use of the objects in the class playlist

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //create a new PlayList instance.
    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++) {
        Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        UIImageView *playlistImageView = self.playlistImageViews[index];
        
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
    
    
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //ID which seque intiated the transition
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        //do something
        UIImageView *playlistImageView = (UIImageView *)[sender view];
        if ([self.playlistImageViews containsObject:playlistImageView]) {
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        
        playlistDetailController.playlist = [[Playlist alloc] initWithIndex:index];
        }
    }
}
- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}

@end
