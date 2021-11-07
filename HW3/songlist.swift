//
//  songlist.swift
//  HW3
//
//  Created by 吳承軒 on 2021/11/5.
//

import Foundation
import SwiftUI

struct songList: View {
    let songs = [
        Song.loseyou,
        Song.moon,
        Song.loselover,
        Song.loveinsummer,
        Song.ugly,
        Song.nolove,
        Song.newworld,
        Song.wewe,
        Song.wendyprincess,
        Song.watermelon
    ]
    
    var body: some View{
        NavigationView {
            List{
                ForEach(songs){ song in
                    NavigationLink{
                        detail(song: song)
                    } label:{
                        SongRow(song: song)
                    }
                }
            }
            .navigationTitle("告五人")
            .foregroundColor(Color.primary)
        }
    }
}
