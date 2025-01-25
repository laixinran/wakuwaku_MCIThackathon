import SwiftUI

struct ThirdView: View {
    // The currently selected image index
    @State private var selectedImageIndex: Int? = nil

    // Array of image names
    let images = ["1", "2", "3"] // These are the names of the image resources

    // Whether the Next button is enabled
    var isNextEnabled: Bool {
        selectedImageIndex != nil
    }

    var body: some View {
        NavigationStack { // Use NavigationStack to support page navigation
            VStack(spacing: 10) { // Reduce spacing between components in the VStack
                
                // Image selector
                ZStack {
                    // Display the currently selected image
                    Image(images[selectedImageIndex ?? 0]) // Default to the first image if none is selected
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130, height: 130)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(isNextEnabled ? Color(hex: "#333333") : Color.clear, lineWidth: 4) // Add a border for selection
                        )
                        .onTapGesture {
                            // If already selected, tapping again will deselect
                            if selectedImageIndex != nil {
                                selectedImageIndex = nil
                            } else {
                                selectedImageIndex = selectedImageIndex ?? 0
                            }
                        }

                    // Left and right buttons
                    HStack {
                        Button(action: {
                            // Swipe left: Decrease the index if the current index is greater than 0
                            if let currentIndex = selectedImageIndex, currentIndex > 0 {
                                selectedImageIndex = currentIndex - 1
                            } else {
                                selectedImageIndex = max(0, (selectedImageIndex ?? 0) - 1)
                            }
                        }) {
                            Image(systemName: "chevron.left")
                                .font(.title3)
                                .foregroundColor(.black)
                                .frame(width: 30, height: 30)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                        }

                        Spacer(minLength: 30)

                        Button(action: {
                            // Swipe right: Increase the index if the current index is less than the last index of the image array
                            if let currentIndex = selectedImageIndex, currentIndex < images.count - 1 {
                                selectedImageIndex = currentIndex + 1
                            } else {
                                selectedImageIndex = min(images.count - 1, (selectedImageIndex ?? 0) + 1)
                            }
                        }) {
                            Image(systemName: "chevron.right")
                                .font(.title3)
                                .foregroundColor(.black)
                                .frame(width: 30, height: 30)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                        }
                    }
                    .frame(width: 160)
                }
                .frame(width: 200, height: 180)

                // Bottom action button
                NavigationLink(destination: FrequencyPage()) { // Navigate to FrequencyPage
                    Text("Next")
                        .font(.system(size: 14, weight: .bold)) // Adjust button font size
                        .frame(width: 120, height: 40) // Set button width and height
                        .background(isNextEnabled ? Color(hex: "#333333") : Color.gray.opacity(0.5)) // Change background color based on state
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                .disabled(!isNextEnabled) // Disable the button based on state
                .padding(.top, 5)
            }
            .padding(.bottom, 15)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "#a5e4d9"))
            .buttonStyle(PlainButtonStyle())
        }
    }
}

#Preview {
    ThirdView()
}

