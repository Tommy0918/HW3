//
//  changeIcon.swift
//  HW3
//
//  Created by 吳承軒 on 2021/11/5.
//

import Foundation
import SwiftUI

struct changeIcon: View{
    var body: some View{
        VStack{
            CustomHeader1(name: "選一個icon來更換")
                .frame(height: 100)
            HStack{
                Button (action:{
                    UIApplication.shared.setAlternateIconName(nil)
                }) {
                    Image("icon")
                        .resizable()
                        .scaledToFit()
                }

                Button (action:{
                    UIApplication.shared.setAlternateIconName("icon2")
                }) {
                    Image("icon2")
                        .resizable()
                        .scaledToFit()
                }
            }

        }
    }
}
