import SwiftUI

struct allSet: View {
    var body: some View {
        ZStack {
            // Background image
            Image("1")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Text("You're all set! \n Welcome to Wakuwaku:)")
                    .font(.caption2) // Set title font size
                    .fontWeight(.bold) // Set bold font
                    .foregroundColor(.black) // Set title text color
                    .multilineTextAlignment(.center) // Center align the title text

                Button(action: {
                    exit(0) // Force exit the app
                }) {
                    Text("Done")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .foregroundColor(.white)
                        .background(Color(hex: "#333333"))
                        .cornerRadius(5)
                        .font(.system(size: 15, weight: .semibold))
                }
                .buttonStyle(PlainButtonStyle()) // Remove default button style
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}


#Preview {
    allSet()
}


