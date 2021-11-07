//
//  detail.swift
//  HW3
//
//  Created by 吳承軒 on 2021/11/5.
//

import Foundation
import SwiftUI
import AVKit

struct detail: View{
    
    let song: Song
    @State private var picHasShown = false
    var body: some View {
        ScrollView{
            LazyVStack{
                VStack {
                    if(picHasShown){
                        AsyncImage(url: URL(string: song.url_photo)) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .transition(.opacity)
                        } placeholder: {
                            Color.white
                        }
                    }
                }
                .animation(.linear(duration: 1))
                .padding()
                CustomHeader1(name: song.name+"歌詞")
                Text(song.lyric)
                    .padding()
                VideoPlayer(player: AVPlayer(url:  URL(string: song.song)! ))
                    .frame(height: 300)
                    .padding()
                Spacer()
            }
            .navigationTitle(song.name)
            .onAppear {
                self.picHasShown = true
            }
            .onDisappear {
                self.picHasShown = false
                
            }
        }
    }
}
