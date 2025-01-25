import SwiftUI

struct Icon: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) { // Adjust spacing between elements
                // Title text
                Text("Choose your background style")
                    .font(.title3) // Set font size for the title
                    .fontWeight(.bold) // Apply bold font weight
                    .foregroundColor(.black) // Set the title text color
                    .multilineTextAlignment(.center) // Center-align the title text
                
                NavigationLink("Continue", destination: ThirdView()) // Change the destination to ThirdView
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
    Icon()
}

