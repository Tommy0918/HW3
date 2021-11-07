//
//  bandinfo.swift
//  HW3
//
//  Created by 吳承軒 on 2021/11/5.
//

import Foundation
import SwiftUI

struct bandIntro: View{
    var body: some View{
        ScrollView{
            VStack{
                CustomHeader1(name: "告五人")
                TabView{
                    ForEach(1..<5){ number in
                        Image("band\(number)")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .background(Color(red: 0/255, green: 255/255, blue: 255/255))
                .cornerRadius(100)
                .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.black, lineWidth: 0))
                .padding()
                .frame(height: 500)
                .tabViewStyle(PageTabViewStyle())
                
                Section(header: CustomHeader1(name: "告五人簡介")) {
                    Text("""
        告五人於2017年4月正式成團，目前團員為男主唱兼木吉他手潘雲安、女主唱犬青及鼓手哲謙。2017年10月發行首張EP《迷霧之子》，舉行首次巡迴演出，締造北高三場皆SOLD OUT紀錄。該作更於翌年獲得2018金音獎最佳新人（團）獎。2019年展開『島嶼雛形』巡迴演唱會。團名取作「告五人」背後並沒有什麼特殊涵義，最初在決定團名時，由團員隨機在法院佈告欄上各指出一個字因而命名。
        樂團最早在宜蘭高中吉他社，由主唱潘雲安哥哥潘燕山(大象)及其好友們成立。後來雲安就讀該校時，由於樂團缺少主唱，於是哥哥強行拉弟弟入團。
        """)
                        .padding()
                        .font(.system(size: 20))
                        .foregroundColor(Color.primary)
                }
            }
        }
    }
}

struct CustomHeader1: View {
    let name: String
    var body: some View {
        ZStack {
            Color(red: 77/255, green: 254/255, blue: 178/255)
            HStack {
                Text(name)
                    .font(.system(size: 25))
                    .bold()
                    .padding()
                    .scaledToFit()
                    .foregroundColor(Color.primary)
                Spacer()
            }
        }
    }
}


struct bandIntro_Previews: PreviewProvider {
    static var previews: some View {
        bandIntro()
    }
}
