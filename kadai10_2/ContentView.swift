//
//  ContentView.swift
//  kadai10_2
//
//  Created by 八木佑樹 on 2024/07/05.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    //背景色を定義
    let colors: [Color] = [.red, .blue, .green]
    
    //都道府県名と説明文をタプル配列にて定義
    var prefectures: [(name: String, description: String)] = [
        (name: "北海道", description: "1番目の都道府県です"),
        (name: "青森県", description: "2番目の都道府県です"),
        (name: "岩手県", description: "3番目の都道府県です"),
        (name: "宮城県", description: "4番目の都道府県です"),
        (name: "秋田県", description: "5番目の都道府県です"),
        (name: "山形県", description: "6番目の都道府県です"),
        (name: "福島県", description: "7番目の都道府県です"),
        (name: "茨城県", description: "8番目の都道府県です"),
        (name: "栃木県", description: "9番目の都道府県です"),
        (name: "群馬県", description: "10番目の都道府県です"),
        (name: "埼玉県", description: "11番目の都道府県です"),
        (name: "千葉県", description: "12番目の都道府県です"),
        (name: "東京都", description: "13番目の都道府県です"),
        (name: "神奈川県", description: "14番目の都道府県です"),
        (name: "新潟県", description: "15番目の都道府県です"),
        (name: "富山県", description: "16番目の都道府県です"),
        (name: "石川県", description: "17番目の都道府県です"),
        (name: "福井県", description: "18番目の都道府県です"),
        (name: "山梨県", description: "19番目の都道府県です"),
        (name: "長野県", description: "20番目の都道府県です"),
        (name: "岐阜県", description: "21番目の都道府県です"),
        (name: "静岡県", description: "22番目の都道府県です"),
        (name: "愛知県", description: "23番目の都道府県です"),
        (name: "三重県", description: "24番目の都道府県です"),
        (name: "滋賀県", description: "25番目の都道府県です"),
        (name: "京都府", description: "26番目の都道府県です"),
        (name: "大阪府", description: "27番目の都道府県です"),
        (name: "兵庫県", description: "28番目の都道府県です"),
        (name: "奈良県", description: "29番目の都道府県です"),
        (name: "和歌山県", description: "30番目の都道府県です"),
        (name: "鳥取県", description: "31番目の都道府県です"),
        (name: "島根県", description: "32番目の都道府県です"),
        (name: "岡山県", description: "33番目の都道府県です"),
        (name: "広島県", description: "34番目の都道府県です"),
        (name: "山口県", description: "35番目の都道府県です"),
        (name: "徳島県", description: "36番目の都道府県です"),
        (name: "香川県", description: "37番目の都道府県です"),
        (name: "愛媛県", description: "38番目の都道府県です"),
        (name: "高知県", description: "39番目の都道府県です"),
        (name: "福岡県", description: "40番目の都道府県です"),
        (name: "佐賀県", description: "41番目の都道府県です"),
        (name: "長崎県", description: "42番目の都道府県です"),
        (name: "熊本県", description: "43番目の都道府県です"),
        (name: "大分県", description: "44番目の都道府県です"),
        (name: "宮崎県", description: "45番目の都道府県です"),
        (name: "鹿児島県", description: "46番目の都道府県です"),
        (name: "沖縄県", description: "47番目の都道府県です")
    ]
    
    
    var body: some View {
        NavigationView{
            List{
                //ここのForeachは省略可。あった方が可読性高そうなので、置いておく。
                ForEach(prefectures.indices, id: \.self) { index in
                    let prefecture = prefectures[index]
                    HStack {
                        Text(prefecture.name)
                        Spacer()
                        Text(prefecture.description)
                    }
                    .listRowBackground(colors[index % colors.count])
                }
                
            }
            //ナビゲーションバーとリスト間の空白削除および各リストの幅を画面一杯に調整
            .listStyle(PlainListStyle())
            .toolbarBackground(Color("AccentColor"), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationBarHidden(false)
        }
    }
}



#Preview {
    ContentView()
}
