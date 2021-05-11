//
//  ContentView.swift
//  AnimatedCircleLiquid
//
//  Created by PATRICIA S SIQUEIRA on 10/05/21.
//

import SwiftUI
import Liquid

struct ContentView: View {
    
    @State var date:Date = Date()
    
    var body: some View {
        ZStack {
            //Background
            RadialGradient(gradient: Gradient(colors: [(Color(red: 159/255, green: 95/255, blue: 128/255, opacity: 0.3)), Color("Background")]), center: .center, startRadius:5, endRadius: 500).edgesIgnoringSafeArea(.all)
            //Color("Background").edgesIgnoringSafeArea(.all)
            Liquid()
                .frame(width: 350, height: 350)
                .foregroundColor(Color(red: 159/255, green: 95/255, blue: 128/255, opacity: 0.3))
                //.opacity(0.3)

            Liquid()
                .frame(width: 330, height: 330)
                .foregroundColor(Color(red: 159/255, green: 95/255, blue: 128/255, opacity: 0.6))
                //.opacity(0.6)

            Liquid(samples: 10)
                .frame(width: 310, height: 310)
                .foregroundColor(Color(red: 159/255, green: 95/255, blue: 128/255, opacity: 1.0))
        
            Text("\(getTextFromDate(date: date))").font(.largeTitle).foregroundColor(.white)
            Circle()
                .stroke(style: .init(lineWidth: 3, lineCap: .round, lineJoin: .round, dash: [0.5, 20.0], dashPhase: 1.0))
                .frame(width: 230, height: 230)
                .foregroundColor(.white)
                .opacity(0.8)
            
           // Days()
        }
    }
    
    func getTextFromDate(date: Date!) -> String {
        let formatter = DateFormatter()
        formatter.locale = .current
        formatter.dateFormat = "dd-MM-YYYY"
        return date == nil ? "?" : formatter.string(from: date)
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Days: View {
//
//    var body: some View {
//        Group{
//            ForEach(0..<32){ number in
//                Button("\(number)") {
//                    print("Pressed\(number)!")
//                }
//                .background(Color.white)
//                .offset(y: -130)
//                .frame(minWidth: 15, minHeight: 15, alignment: .center)
//                .rotationEffect(.degrees( Double((360/31) * number)))
//                .foregroundColor(.black)
//            }
//
//        }
//
//    }
//}
