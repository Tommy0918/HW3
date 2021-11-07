//
//  ContentView.swift
//  HW3
//
//  Created by 吳承軒 on 2021/10/20.
//

import Foundation
import SwiftUI
import AVFoundation

struct ContentView: View{
    let player = AVPlayer()
    var body: some View {
        TabView{
            songList()
                .tabItem {
                    Image(systemName: "books.vertical.circle.fill")
                    Text("歌曲簡介")
                        .foregroundColor(Color.primary)
                }
            bandIntro()
                .tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("告五人介紹")
                        .foregroundColor(Color.primary)
                }
            personIntro()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("作者介紹")
                        .foregroundColor(Color.primary)
                }
            smallgame()
                .tabItem {
                    Image(systemName: "circle.grid.cross.fill")
                    Text("小遊戲")
                        .foregroundColor(Color.primary)
                }
            changeIcon()
                .tabItem {
                    Image(systemName: "paintbrush.pointed.fill")
                    Text("更換icon")
                        .foregroundColor(Color.primary)
                }
        }
        .onAppear {
            let fileURL = Bundle.main.url(forResource: "music", withExtension: "mp3")!
            let playerItem = AVPlayerItem(url: fileURL)
            self.player.replaceCurrentItem(with: playerItem)
            self.player.play()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
