//
//  ContentView.swift
//  Shared
//
//  Created by MAC on 7/22/22.
//

import SwiftUI

struct ContentView: View {
    @State var rows:[item] = [
        item(title:"Name", childRows: [item(title: "Mandeep"),item(title: "simarjeet"),item(title: "sandeep"),item(title: "Gurtarak")]),
        item(title: "Branch", childRows: [item(title: "CSE"),item(title: "ECE"),item(title: "Food"),item(title: "EE")]),
        item(title: "Subject", childRows: [item(title: "java"),item(title: "c++"),item(title: "python")])
    ]
    @State var name = ""
    @State var show = false

    var body: some View {
        NavigationView{
        VStack{
            List(rows, children: \.childRows){ i in
                Text(i.title)
                    .onTapGesture {
                        name = "\(i.title)"
                        print(name)
                        self.show = true
                    }
                    
            }
            NavigationLink("", destination:nextView(name: $name), isActive: $show )
         }
        }
    }
}

struct nextView: View{
    @Binding var name:String
    var body: some View{
        Text("\(name)")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
