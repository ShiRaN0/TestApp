//
//  TopView.swift
//  splash-screens-test
//
//  Created by 齋藤有希 on 2022/04/29.
//

import SwiftUI


struct TopView: View {
    @State var opacity: Double = 0
    var body: some View {
        ZStack{
        Color("MainColor")
            .ignoresSafeArea()
            Text("Top")
                .font(.title)
                .fontWeight(.medium)
                .lineLimit(nil)
        }.opacity(opacity)
        .onAppear{
            withAnimation(.linear(duration: 0.3)) {
               
                self.opacity = 1.0
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
