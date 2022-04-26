//
//  LaunchScreen.swift
//  splash-screens-test
//
//  Created by Hikaru Jitsukawa on 2022/04/26.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var isLoading = true
    var body: some View {
        if isLoading {
            ZStack {
                Color("Primary")
                    .ignoresSafeArea()
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation {
                        isLoading = false
                    }
                }
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
