import SwiftUI

struct TimeSetting: View {
    @State private var startHour: Int = 9
    @State private var startMinute: Int = 0
    @State private var endHour: Int = 22
    @State private var endMinute: Int = 0

    let hours = Array(0...23)
    let minutes = Array(0...59)

    var body: some View {
        NavigationStack {
            VStack(spacing: 6) { // Reduce the spacing between components in the VStack
                // Title
                Text("Set Start and End Times")
                    .font(.system(size: 13, weight: .bold)) // Bold font
                    .foregroundColor(Color(hex: "#333333"))
                    .multilineTextAlignment(.center)
                    .padding(.top, 10) // Reduce top padding

                // Time setting area
                VStack(spacing: 4) { // Reduce vertical spacing
                    HStack(spacing: 4) { // Reduce horizontal spacing between text and pickers
                        Text("Start at")
                            .frame(width: 60, alignment: .leading) // Fixed width to minimize space usage
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color.black)

                        // Start time pickers
                        Picker("Hour", selection: $startHour) {
                            ForEach(hours, id: \.self) { hour in
                                Text(String(format: "%02d", hour))
                                    .tag(hour)
                            }
                        }
                        .frame(width: 40, height: 55) // Reduce picker size
                        .clipped()

                        Picker("Min", selection: $startMinute) {
                            ForEach(minutes, id: \.self) { minute in
                                Text(String(format: "%02d", minute))
                                    .tag(minute)
                            }
                        }
                        .frame(width: 40, height: 55) // Reduce picker size
                        .clipped()
                    }

                    HStack(spacing: 4) { // Reduce horizontal spacing between text and pickers
                        Text("End at")
                            .frame(width: 60, alignment: .leading) // Fixed width to minimize space usage
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color.black)

                        // End time pickers
                        Picker("Hour", selection: $endHour) {
                            ForEach(hours, id: \.self) { hour in
                                Text(String(format: "%02d", hour))
                                    .tag(hour)
                            }
                        }
                        .frame(width: 40, height: 55) // Reduce picker size
                        .clipped()

                        Picker("Min", selection: $endMinute) {
                            ForEach(minutes, id: \.self) { minute in
                                Text(String(format: "%02d", minute))
                                    .tag(minute)
                            }
                        }
                        .frame(width: 40, height: 55) // Reduce picker size
                        .clipped()
                    }
                }

                Spacer(minLength: 12) // Adjust bottom spacing for a tighter layout

                // Next button
                NavigationLink(destination: allSet()) { // Navigate to the allSet page
                    Text("Next")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 90, height: 30) // Reduce button size
                        .background(Color(hex: "#333333"))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }
                .padding(.bottom, 15) // Reduce bottom padding
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "#a5e4d9"))
            .navigationBarTitleDisplayMode(.inline)
            .buttonStyle(PlainButtonStyle())
        }
    }
}

#Preview {
    TimeSetting()
}

