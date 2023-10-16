//
//  MotionAnimationView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 15.10.2023.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - Properties
    
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimation: Bool = false
    
    // MARK: - Function
    
    //: 1. Random Coordinate
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    //: 2. Random Size
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    
    //: 3. Random Scale
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    //: 4. Random Speed
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...2.0)
    }
    
    //: 5. Random Delay
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    //: 6. Random Color()
    func randomColor() -> [Color] {
        let randomColor: [Color] = [.blue, .yellow, .orange, .purple, .cyan, .green]
        return randomColor
    }
    
    
    // MARK: - Body
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundStyle(randomColor().randomElement()!)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimation ? randomScale() : 1)
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                    )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear(perform: {
                            isAnimation = true
                        }
                        )
                } //: ForEach
            } //: ZStack
//            .drawingGroup() //: Убирает рендер в рельном времени(Экономит батарею)
        } //: GeometryReader
    }
}
// MARK: - Preview
#Preview {
    MotionAnimationView()
}
