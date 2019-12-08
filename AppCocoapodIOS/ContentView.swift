//
//  ContentView.swift
//  AppCocoapodIOS
//
//  Created by Hamilton Ferreira on 08/12/19.
//  Copyright © 2019 Hamilton Ferreira. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
        WebImage(url: URL(string: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic"))
        .onSuccess { image, cacheType in
            // Success
        }
        .resizable() // Resizable like SwiftUI.Image
        .placeholder(Image(systemName: "photo")) // Placeholder Image
        // Supports ViewBuilder as well
        .placeholder {
            Rectangle().foregroundColor(.gray)
        }
        .animated() // Supports Animated Image
        .indicator(.activity) // Activity Indicator
        .animation(.easeInOut(duration: 0.5)) // Animation Duration
        .transition(.fade) // Fade Transition
        .scaledToFit()
        .frame(width: 300, height: 300, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
