import SwiftUI

struct FrequencyPage: View {
    // State variable to track the number of daily reminders
    @State private var reminderCount: Int = 0

    var body: some View {
        NavigationStack { // Supports navigation between pages
            VStack(spacing: 20) {
                // Title
                Text("How many reminders per day?")
                    .font(.system(size: 13, weight: .semibold))
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "#333333"))
                    .multilineTextAlignment(.center) // Center align the title
                    .padding(.top, 15)

                // Counter section in the middle
                HStack(spacing: 15) { // Reduce spacing between buttons
                    // Minus button
                    Button(action: {
                        if reminderCount > 0 {
                            reminderCount -= 1
                        }
                    }) {
                        Image(systemName: "minus")
                            .font(.title3) // Adjust font size
                            .foregroundColor(.black)
                            .frame(width: 30, height: 30) // Adjust button size
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(6) // Adjust corner radius
                    }

                    // Display the current reminder count
                    Text("\(reminderCount)")
                        .font(.title2) // Adjust font size
                        .frame(width: 80, height: 40) // Adjust the size of the display box
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)

                    // Plus button
                    Button(action: {
                        reminderCount += 1
                    }) {
                        Image(systemName: "plus")
                            .font(.title3) // Adjust font size
                            .foregroundColor(Color(hex: "#333333"))
                            .frame(width: 30, height: 30) // Adjust button size
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(6) // Adjust corner radius
                    }
                }

                Spacer() // Add flexible space to push the button group to the bottom

                // Bottom action button
                NavigationLink(destination: TimeSetting()) { // Navigate to the TimeSetting page
                    Text("Next")
                        .font(.system(size: 14, weight: .semibold)) // Adjust font size
                        .frame(width: 100, height: 35) // Control button width and height
                        .background(reminderCount > 0 ? Color(hex: "#333333") : Color.gray.opacity(0.5)) // Change background color based on state
                        .cornerRadius(8) // Adjust corner radius
                        .foregroundColor(.white)
                }
                .disabled(reminderCount == 0) // Disable the button if the reminder count is 0
                .padding(.horizontal)
                .padding(.bottom, 20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "#a5e4d9"))
            .navigationBarTitleDisplayMode(.inline)
            .buttonStyle(PlainButtonStyle())
        }
    }
}

#Preview {
    FrequencyPage()
}
