//
//  onboarding4.swift
//  eyetick2
//
//  Created by Nourah on 18/06/1444 AH.
//

import SwiftUI

struct onboarding4: View {
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()
            VStack{
                HStack{
                    Text("20-20")
                        .font(.system(size:24, design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("grey"))
                    +
                    Text("-20")
                        .font(.system(size:24, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ochre"))
                    +
                    Text(" Rule")
                        .font(.system(size:24, design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("grey"))
                }.padding(.bottom,30)
                VStack{
                    
                    HStack{
                        Text("Look at something")
                            .font(.system(size:32, design: .rounded))
                            .foregroundColor(Color("indigo"))
                            .fontWeight(.semibold)
                        +
                        Text(" 20ft away")
                            .font(.system(size:32, design: .rounded))
                            .foregroundColor(Color("blue"))
                        .fontWeight(.bold)
                        
                    }.multilineTextAlignment(.center)
                    
                   
                }.padding(.bottom, 25.0)
                VStack{
                    
                    
                    Image("look away")
                        .resizable()
                        .scaledToFit()
                    VStack{
                        Text("And give your eyes the break they deserve.")
                            .font(.system(size:20, design: .rounded))
                            .foregroundColor(Color("grey"))
                            .padding()
                        
                    }.multilineTextAlignment(.center)
                    
                    
                    
                }.padding(.bottom, 100)
            }
           
        }
    }
}

struct onboarding4_Previews: PreviewProvider {
    static var previews: some View {
        onboarding4()
    }
}
