import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.lightBlue
                    .ignoresSafeArea()

                VStack {
                    

                    Text("TEAM MADDUX")
                        .font(.custom("TimesNewRomanPS-BoldMT", size: 30)) // Using system font "Times New Roman"
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Image("Joseph")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                        .padding()
                    Spacer()

                    VStack(spacing: 20) {
                        NavigationLink(destination: AboutView()) {
                            Text("Context of Maddux")
                                .padding()
                                .font(.custom("TimesNewRomanPS-BoldMT", size: 20))
                                .foregroundColor(Color.white)
                                .background(Color.black.opacity(0.7))
                                .cornerRadius(20)
                        }

                        NavigationLink(destination: EventView()) {
                            Text("Go to an Event")
                                .padding()
                                .font(.custom("TimesNewRomanPS-BoldMT", size: 20))
                                .foregroundColor(Color.white)
                                .background(Color.black.opacity(0.7))
                                .cornerRadius(20)
                        }
                    }
                    .padding(20)
                    .background(Color.lightBlue.opacity(0.8))
                    .cornerRadius(20)

                    Spacer()

                    Link(destination: URL(string: "https://my.luriechildrens.org/page/43035/donate/1?locale=en-US")!) {
                        Text("Donate Today")
                            .padding()
                            .font(.custom("TimesNewRomanPS-BoldMT", size: 17))
                            .foregroundColor(Color.white)
                            .background(Color.black.opacity(0.7))
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
    static let lightBlue = Color(red: 103/255, green: 175/255, blue: 255/255)
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
