import SwiftUI


struct AsyncImage<Content> where Content : View {
    
}

struct EventView: View {
    let events = ["Apple Picking", "Tree PLanting", "Hockey Game"]
    let photos = ["photo1", "photo2", "photo3"]
    let photoData = ["Data for Photo 1", "Data for Photo 2", "Data for Photo 3"]
    


    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(0..<events.count) { index in
                    PhotoView(photo: photos[index], event: events[index], data: photoData[index])
                }
            }
            .padding()
            Color.blue
                .ignoresSafeArea()

        }
    }
}

struct PhotoView: View {
    let photo: String
    let event: String
    let data: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Color.blue
                .ignoresSafeArea()

            
            
            Text(event)
                .padding()
                .background(Color.white)
                .foregroundColor(Color.black)
                .cornerRadius(20)
            
            Text(data)
            
            Spacer()
            Spacer()
            
            
            
        }
        
    }
    }
        
        struct EventView_Previews: PreviewProvider {
            static var previews: some View {
                EventView()
            }
        }
    

