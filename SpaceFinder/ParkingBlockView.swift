import SwiftUI
struct ParkingBlockView: View {
    let color: Color
    let title: String
    let availableSpots: String

    var body: some View {
        NavigationLink(destination: MapView()) {
            Rectangle()
                .frame(width: 330, height: 100)
                .foregroundColor(.white)
                .opacity(0.7)
                .cornerRadius(15)
                .overlay {
                    VStack(alignment: .leading) {
                        Rectangle()
                            .frame(width: 90)
                            .cornerRadius(15)
                            .foregroundColor(color)
                        Text(title)
                            .font(.title2)
                            .padding(.leading, 40)
                            .padding(.bottom)
                            .bold()
                        Text(availableSpots)
                            .font(.title3)
                            .padding(.top, 45)
                            .padding(.leading, 40)
                        HStack {
                            Spacer()
                            Image(systemName: "arrow.right")
                                .bold()
                            Image(systemName: "car")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45)
                        }
                        .padding(.leading, 240)
                    }
                }
        }
        .padding(8)
    }
}
