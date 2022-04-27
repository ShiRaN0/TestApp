//
//  LaunchScreen.swift
//  splash-screens-test
//
//  Created by Hikaru Jitsukawa on 2022/04/26.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var isLoading = true
    @State private var isPlayAnimation = false
    var body: some View {
        if isLoading {
            ZStack {
                Color("MainColor")
                    .ignoresSafeArea()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .scaleEffect(isPlayAnimation ? 1.0:0.5)
                    
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    
                    withAnimation(){
                        self.isPlayAnimation.toggle()
                    }
                }
            }
            .onTapGesture {
                
                isLoading=false
            }
        } else {
            ContentView()
        }
    }
    
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
