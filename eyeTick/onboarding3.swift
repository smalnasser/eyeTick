//
//  onboarding3.swift
//  eyetick2
//
//  Created by Nourah on 18/06/1444 AH.
//

import SwiftUI

struct onboarding3: View {
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()
            VStack{
                HStack{
                    Text("20-")
                        .font(.system(size:24, design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("grey"))
                    +
                    Text("20")
                        .font(.system(size:24, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ochre"))
                    +
                    Text("-20 Rule")
                        .font(.system(size:24, design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("grey"))
                }.padding(.bottom,30)
                
                VStack{
                    
                    HStack{
                        Text("Take a break for")
                            .font(.system(size:32, design: .rounded))
                            .foregroundColor(Color("indigo"))
                            .fontWeight(.semibold)
                        +
                        Text(" 20 seconds")
                            .font(.system(size:32, design: .rounded))
                            .foregroundColor(Color("green"))
                        .fontWeight(.bold)
                        
                    }.multilineTextAlignment(.center)
                    
                   
                }.padding(.bottom, 50.0)
                VStack
                {
                    
                    
                    Image("eyes")
                        .resizable()
                        .scaledToFit()
                    
                    
                    
                }.padding(.bottom, 100)
            }
           
        }
        
    }
}

struct onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        onboarding3()
    }
}
