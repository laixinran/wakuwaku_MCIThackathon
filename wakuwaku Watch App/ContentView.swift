import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("wakuwaku")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                NavigationLink("Start Setting", destination: WhatBringsYouHere())
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
                    .background(Color(hex: "#333333"))
                    .cornerRadius(5)
                    .font(.system(size: 15, weight: .semibold))
                    .buttonStyle(PlainButtonStyle())

            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "#a5e4d9")) // background color
        }
    }
}

// color extension
extension Color {
    init(hex: String) {
        let hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: "#", with: "")
        let scanner = Scanner(string: hexSanitized)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue >> 16) & 0xFF) / 255.0
        let green = Double((rgbValue >> 8) & 0xFF) / 255.0
        let blue = Double(rgbValue & 0xFF) / 255.0
        self.init(red: red, green: blue, blue: blue)
    }
}

#Preview {
    ContentView()
}


