//
//  SongRow.swift
//  HW3
//
//  Created by 吳承軒 on 2021/11/3.
//

import Foundation
import SwiftUI

struct SongRow: View {
    
    let song: Song
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: song.url_photo)){ image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipped()
            } placeholder: {
                Color.green
            }
            .padding()
            VStack(alignment: .leading) {
                Text(song.name)
            }
            Spacer()
        }
    }
                        
}
