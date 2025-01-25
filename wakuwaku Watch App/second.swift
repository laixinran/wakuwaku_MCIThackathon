import SwiftUI

struct SecondView: View {
    // Use an array to store the selected categories
    @State private var selectedCategories: [String] = []

    // Define the available categories
    let categories = ["Stress & Anxiety", "Sports & Sleep", "Nutrition"]

    var body: some View {
        VStack {
            Spacer() // Add spacing to center the category buttons
            
            // Display category options
            VStack(spacing: 13) { // Adjust spacing between options
                ForEach(categories, id: \.self) { category in
                    Button(action: {
                        // Add or remove category from the selected list
                        if selectedCategories.contains(category) {
                            selectedCategories.removeAll { $0 == category }
                        } else {
                            selectedCategories.append(category)
                        }
                    }) {
                        Text(category)
                            .frame(maxWidth: .infinity) // Make the button fill the available width
                            .padding() // Add padding to the button
                            .background(selectedCategories.contains(category) ? Color.green.opacity(0.3) : Color.gray.opacity(0.2)) // Change background color based on selection
                            .cornerRadius(10) // Add rounded corners
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(selectedCategories.contains(category) ? Color.green : Color.clear, lineWidth: 2) // Add border if selected
                            )
                            .foregroundColor(selectedCategories.contains(category) ? .black : .white) // Change text color based on selection
                    }
                    .buttonStyle(PlainButtonStyle()) // Remove default button styling
                }
            }
            .padding(.horizontal) // Add horizontal padding

            Spacer(minLength: 30) // Add spacing between category options and the bottom button

            // Bottom navigation button
            NavigationLink("Next", destination: Icon()) // Add navigation to the Icon view
                .padding(.horizontal, 20) // Adjust horizontal padding
                .padding(.vertical, 10) // Adjust vertical padding
                .foregroundColor(.white) // Set text color to white
                .background(Color(hex: "#333333")) // Set button background color to dark gray
                .cornerRadius(5) // Add rounded corners to the button
                .font(.system(size: 15, weight: .semibold)) // Customize font size and weight
                .buttonStyle(PlainButtonStyle()) // Remove default button styling
                .padding(.horizontal)
                .padding(.bottom, 10)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Make the view fill the screen
        .background(Color(hex: "#a5e4d9")) // Set background color
    }
}

