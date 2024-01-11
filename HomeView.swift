import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.lightBlue
                    .ignoresSafeArea()

                VStack {
                    Image("maddux")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                        .padding()

                    Text("TEAM MADDUX")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)

                    Spacer()

                    VStack(spacing: 20) {
                        NavigationLink(destination: AboutView()) {
                            Text("Maddux Albert Joseph - Life Story")
                                .padding()
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .cornerRadius(20)
                        }

                        NavigationLink(destination: EventView()) {
                            Text("Go to an Event")
                                .padding()
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .cornerRadius(20)
                        }
                    }
                    .padding(20)
                    .background(Color.lightBlue)
                    .cornerRadius(20)

                    Spacer()

                  
                    Link(destination: URL(string: "https://my.luriechildrens.org/page/43035/donate/1?locale=en-US")!) {
                        Text("Donate")
                            .padding()
                            .background(Color.white)
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                            .padding(.bottom, 20)
                    }
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
