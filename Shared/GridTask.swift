//
//  GridTask.swift
//  FirstTask
//
//  Created by MAC on 7/22/22.
//

import SwiftUI

struct GridTask: View {
    @State var arr = [1,2,3,4,5]
    let rows = [
        GridItem(.adaptive(minimum: 50))
        ]
    var body: some View {
        VStack{
            List(arr, id: \.self){ i in
                ScrollView(.horizontal, showsIndicators: false){
                LazyHGrid(rows: rows, spacing: 10){
                    ForEach(arr, id: \.self){ g in
                        ZStack{
                            Button(action: {
                                print("Row no. is", i)
                                print("Grid no. is", g)
                               
                            }, label: {
                                Text("\(g)")
                                    .font(.system(size: 10))
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 20)
                                    .background(Color.black)
                                    .cornerRadius(10)
                                
                            })
                            .padding(.all, 10)
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .frame(width: 50, height: 50)
                    .border(.gray)
                  
                }
                }
                
            }
        }
    }
}

struct GridTask_Previews: PreviewProvider {
    static var previews: some View {
        GridTask()
    }
}
