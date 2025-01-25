import SwiftUI

struct WhatBringsYouHere: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) { // Adjust the spacing between elements
                // Title text
                Text("What brings you here?")
                    .font(.title3) // Set font size for the title
                    .fontWeight(.bold) // Apply bold font weight
                    .foregroundColor(.black) // Set the title text color
                    .multilineTextAlignment(.center) // Center-align the title text
                
                NavigationLink("Let's Begin", destination: SecondView()) // Change the destination to SecondView
                    .padding(.horizontal, 20) // Adjust horizontal padding for the button
                    .padding(.vertical, 10) // Adjust vertical padding for the button
                    .foregroundColor(.white) // Set text color to white
                    .background(Color(hex: "#333333")) // Set button background color to dark gray
                    .cornerRadius(5) // Add rounded corners to the button
                    .font(.system(size: 15, weight: .semibold)) // Customize button text size and weight
                    .buttonStyle(PlainButtonStyle()) // Remove default NavigationLink styling

            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Make the content fill the entire view
            .background(Color(hex: "#a5e4d9")) // Set the background color
        }
    }
}

#Preview {
    WhatBringsYouHere()
}

