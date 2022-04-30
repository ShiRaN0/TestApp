//
//  LaunchScreen.swift
//  splash-screens-test
//
//  Created by Hikaru Jitsukawa on 2022/04/26.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var isLoading = false
    @State private var isPlayAnimation = false
    var body: some View {
  
            ZStack {
                Color("MainColor")
                    .ignoresSafeArea()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .scaleEffect(isPlayAnimation ? 1.0:0.5)
                //とりあえずロードが完了しているという体で
                if isLoading{
                    TopView()
                }
            }
            .onAppear {
                //拡大アニメーション用
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    
                    withAnimation(){
                        self.isPlayAnimation.toggle()
                    }
                }
               
               
            }
            .onTapGesture {
              
                isLoading=true
            }
     
    }
    
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
