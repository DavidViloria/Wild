//
//  MotionAnimationView.swift
//  Wild
//
//  Created by David Viloria Ortega on 13/01/25.
//

import SwiftUI

struct MotionAnimationView: View {

    @State private var isAnimating: Bool = false
    @State private var randomCircle = Int.random(in: 12...16)

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { _ in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: RandomGenerator.size(), height: RandomGenerator.size(), alignment: .center)
                        .scaleEffect(isAnimating ? RandomGenerator.scale() : 1)
                        .position(
                            x: RandomGenerator.coordinate(max: geometry.size.width),
                            y: RandomGenerator.coordinate(max: geometry.size.height)
                        )
                        .onAppear {
                            withAnimation(
                                Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                    .repeatForever()
                                    .speed(RandomGenerator.speed())
                                    .delay(RandomGenerator.delay())
                            ) {
                                isAnimating = true
                            }
                        }
                }
            }
            .drawingGroup()
        }
    }
}

#Preview {
    MotionAnimationView()
}
