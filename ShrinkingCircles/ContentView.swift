//
//  ContentView.swift
//  ShrinkingCircles
//
//  Created by Nathan on 2022-11-18.
//

import SwiftUI

struct ShrinkingCircles: Shape {
    func path(in rect: CGRect) -> Path {
        
        // add path
        var path = Path()
        
        // add circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: (rect.width - rect.height) / 2 , y: 0), size: CGSize(width: rect.height, height: rect.height)))
        
        //, transform: CGAffineTransform(translationX: (rect.height / 3.5), y: 0)
        
//         return path
        return path
    }
}

struct ContentView: View {
    var body: some View {
                ShrinkingCircles()
            .stroke(lineWidth: 0.2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
