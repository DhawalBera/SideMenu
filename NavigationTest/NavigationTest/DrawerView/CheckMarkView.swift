//
//  CheckMarkView.swift
//  NavigationTest
//
//  Created by Dhawal Bera on 31/01/21.
//  Copyright © 2021 Dhawal Bera. All rights reserved.
//

import SwiftUI

struct CheckMarkView: View {
    @State var end : CGFloat = 0.0
    var body: some View{
        GeometryReader { (geometry) in
            CheckMark()
                .trim(from: 0, to: self.end)
                .stroke(Color.green, lineWidth: 1)
                .animation(.easeInOut(duration: 0.5))
                .padding(2)
                .onAppear(){
                    self.end = 1
            }
        }
    }
}

struct CheckMarkView_Previews: PreviewProvider {
    static var previews: some View {
        //CheckMarkView()
        CheckMarkView()
            .frame(width: 80, height: 80, alignment: .center)
            .background(Color.blue)
    }
}

struct CheckMark: Shape{
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        
        let minValue = min(width, height)
        
        let center = CGPoint(x: minValue/2, y: minValue/2)
        
        let radius = minValue / 2
        
        path.addArc(center: center,
                radius: radius,
                startAngle: Angle(degrees: 0),
                endAngle: Angle(degrees: 360),
        clockwise: true)
        
        let p = Point(x: radius / 3, y: radius * 1.2)
        let po = [
            Point(x: radius / 1.5 , y: radius * 1.6),
            Point(x: radius * 1.7, y: radius / 1.5)
        ]
        path.move(to: CGPoint(x: p.x, y: p.y))
        
        po.forEach { point in
            path.addLine(to: CGPoint(x: CGFloat(point.x), y:  CGFloat(point.y)))
        }
        
        return path
    }
    
    
}

struct Point:Identifiable{
    let id = UUID()
    var x: CGFloat
    var y: CGFloat
}
