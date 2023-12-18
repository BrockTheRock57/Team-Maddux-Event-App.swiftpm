import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.lightBlue
                    .ignoresSafeArea()

                VStack {
                    Spacer()

                    VStack {
                        Text("TEAM MADDUX")
                            .font(.custom("Georgia", size: 32))
                            .fontWeight(.bold)
                            .padding()
                            .cornerRadius(10)
                            .foregroundColor(Color.black)

                        NavigationLink(destination: AboutView()) {
                            Text("Maddux Albert Joseph - Life Story")
                                .padding()
                                .background(Color.lightBlue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }

                        NavigationLink(destination: EventView()) {
                            Text("Go to an Event")
                                .padding()
                                .background(Color.lightBlue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .background(Color.lightBlue)
                    .cornerRadius(10)

                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}



extension Color {
    static let lightBlue = Color(red: 103/255, green: 216/255, blue: 255/255)
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
