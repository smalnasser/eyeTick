//
//  onboadring2.swift
//  eyetick2
//
//  Created by Nourah on 18/06/1444 AH.
//

import SwiftUI

struct onboadring2: View {
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()
            VStack{
                
                HStack{
                    Text("20")
                        .font(.system(size:24, design:.rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ochre"))
                    +
                    Text("-20-20 Rule")
                        .font(.system(size:24, design:.rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color("grey"))
                
                    
                }.padding(.bottom, 20)
                VStack{
                    
                    HStack{
                        Text("For every")
                            .font(.system(size:32, design: .rounded))
                            .foregroundColor(Color("indigo"))
                            .fontWeight(.semibold)
                        +
                        Text(" 20 minutes")
                            .font(.system(size:32, design: .rounded))
                            .foregroundColor(Color("blue"))
                        .fontWeight(.bold)}
                    
                    HStack{
                        Text(" work on screen")
                            .font(.system(size:32, design: .rounded))
                            .foregroundColor(Color("indigo"))
                            .fontWeight(.semibold)
                    }.multilineTextAlignment(.center)
                }.padding(.bottom, 50.0)
                VStack
                {
                    
                    
                    Image("work3")
                        .resizable()
                        .scaledToFit()
                    
                    
                    
                }.padding(.bottom, 200.0)
            }
                        Button(action: {
                            // Add action for button
                        }, label: {
                            Text("Get Started")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.horizontal, 50)
                                .padding(.vertical, 16)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(
                                            Color("blue"
                                            )
                                        )
                                )
                        })
                        .shadow(radius: 10)
                        .padding(.top,500)
            
            
        }
        
    }
}

struct onboadring2_Previews: PreviewProvider {
    static var previews: some View {
        onboadring2()
    }
}
