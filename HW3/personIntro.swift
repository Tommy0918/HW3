//
//  personIntro.swift
//  HW3
//
//  Created by 吳承軒 on 2021/11/7.
//

import Foundation
import SwiftUI

struct personIntro: View{
    var body: some View{
        ScrollView{
            VStack{
                CustomHeader2(name: "作者：吳承軒")
                TabView{
                    ForEach(1..<4){ number in
                        Image("tommy\(number)")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .background(Color(red: 255/255, green: 255/255, blue: 255/255))
                .cornerRadius(100)
                .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.black, lineWidth: 0))
                .padding()
                .frame(height: 500)
                .tabViewStyle(PageTabViewStyle())
                
                Section(header: CustomHeader2(name: "指導老師：最帥的講師“彼得潘”")) {
                    Image("handsomepeter1")
                        .resizable()
                        .scaleEffect()
                        .padding()
                        .cornerRadius(100)
                        .frame(height: 500)
                        .tabViewStyle(PageTabViewStyle())
                    Text("""
        愛瘋一切為蘋果的彼得潘
        更多關於彼得潘的故事
        暢銷書 《 彼得潘的 Swift 程式設計入門》、《 App 程式設計入門－iPhone, iPad 》作者 (博客來電腦類Top 1，天瓏銷售排行Top 1,  PC Home 電腦/攝影 Top 1, 金石堂Top 3 )
        FB粉絲團: 愛瘋一切為蘋果的彼得潘
        App作品: Wealthy, LOCOMO運動記錄, 戴佩妮回家路上等二十幾款App (Wealthy App曾獲台灣Finance Top 1，台灣不分類Top 2，中國Finance Top 2)
        iOS開發講師: ALPHA Camp ， 譯智教育訓練，資策會，TibaMe，STUDIO A，iPlayground，夢種子
        學校講師: 台大共同教育中心，政治大學，中央大學，海洋大學，臺北大學，逢甲大學，淡江大學，文化大學，臺北科大，醒吾科大，弘光科大，正修科大，慈濟科大，勤益科大，中國科大，南崁高中，高雄美國學校
        家教: 專屬於你的 iOS APP 開發導師，鐘點大師，
        企業內訓:  Yahoo，聯陽半導體，世界先進，信義房屋
        Blog: 彼得潘的 App Neverland
        技術顧問: iOS APP 金牌擺渡人，FUNTEK，點點數位，英諾奧茲, Brocas
        雜誌專欄: AppCoda，MacToday App開發，PChome Mac基礎教室
        """)
                        .padding()
                        .font(.system(size: 24))
                        .foregroundColor(Color.primary)
                }
            }
        }
    }
}

struct CustomHeader2: View {
    let name: String
    var body: some View {
        ZStack {
            Color(red: 150/255, green: 150/255, blue: 178/255)
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


struct personIntro_Previews: PreviewProvider {
    static var previews: some View {
        personIntro()
            .previewInterfaceOrientation(.portrait)
    }
}

