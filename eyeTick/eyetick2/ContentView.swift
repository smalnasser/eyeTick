//
//  ContentView.swift
//  eyetick2
//
//  Created by Nourah on 18/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var thePage = false
    @State var changePage : Bool = false
    @State private var selectedTab = 1
    @State private var isAnumating: Bool = false
    var body: some View {
        NavigationView{
            TabView(selection: $selectedTab){
                
                ZStack{
                    Image("background1")
                        .ignoresSafeArea()
                        .padding(.bottom,10)
                    VStack{
                        Image("logo")
                            .scaledToFit()
                            .padding(.bottom, 5.0)
                        Text("Do you stare at screens all day?")
                            .font(.system(size: 40, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(Color("blue"))
                            .padding(.bottom,100)
                            .multilineTextAlignment(.center)
                            .padding(.bottom,30)
                     Text("Do you have dry eyes, eye strain, headache or blurry vision!")
                            .font(.system(size: 20, design: .rounded))
                            .fontWeight(.medium)
                            .foregroundColor(Color("grey"))
                            .multilineTextAlignment(.center)
                            .padding(20.0)
                            .padding(.bottom)
                        HStack{
                            Text("Eyetick")
                                .font(.system(size: 24, design: .rounded))
                                .fontWeight(.bold)
                                .foregroundColor(Color("green"))
                            +
                            Text(" will help you by")
                                .font(.system(size:24, design: .rounded))
                                .fontWeight(.semibold)
                                .foregroundColor(Color("grey"))
                                
                        }.multilineTextAlignment(.center)
                         
                        Text("following the 20-20-20 rule")
                            .font(.system(size:24, design: .rounded))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("grey"))
                            
                        
                        
                    }.padding(.bottom,200)
                }.tag(1)
                
                
                
                ZStack{
                
                    Image("background1")
                        .ignoresSafeArea()
                        .padding(.bottom,10)

                    VStack{
                        VStack{
                            HStack{
                                Text("20")
                                    .font(.system(size:24, design:.rounded))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("ochre"))
                                +
                                Text("-20-20 Rule")
                                    .font(.system(size:24, design:.rounded))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("grey"))
                            
                                
                            }.padding(.bottom, 20)
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
                                .scaleEffect(isAnumating ? 1 : 0.9)
                            
                            
                            
                        }.padding(.bottom, 200)
                            .onAppear(perform: {
                                isAnumating = false
                                withAnimation(.easeOut(duration: 0.5)){
                                    self.isAnumating = true
                                }
                            })
                    }
                    
                }.tag(2)
                ZStack{
                    Image("background1")
                        .ignoresSafeArea()
                        .padding(.bottom,10)

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
                                .scaleEffect(isAnumating ? 1 : 0.9)
                            
                            
                            
                        }.padding(.bottom, 100)
                            .onAppear(perform: {
                                isAnumating = false
                                withAnimation(.easeOut(duration: 0.5)){
                                    self.isAnumating = true
                                }
                            })
                    }
                   
                }.tag(3)
                ZStack{
                    
                    Image("background1")
                        .ignoresSafeArea()
                        .padding(.bottom,10)

                    VStack{
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
                                .scaleEffect(isAnumating ? 1 : 0.9)
                            VStack{
                                Text("And give your eyes the break they deserve.")
                                    .font(.system(size:20, design: .rounded))
                                    .foregroundColor(Color("grey"))
                                    .padding()
                                
                            }.multilineTextAlignment(.center)
                            
                            
                            
                        }.padding(.bottom, 100)
                    }
                    
        
                    Button{
                     thePage = true
                    }label: {
                        Text("Get Started")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.horizontal, 50)
                            .padding(.vertical, 16)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(
                                        Color("ochre"
                                        )
                                    )
                            )
                    }.fullScreenCover(isPresented: $thePage, content: eyeTick.init)
                    .shadow(radius: 10)
                    .padding(.top,600)
                    .onAppear(perform: {
                        isAnumating = false
                        withAnimation(.easeOut(duration: 0.5)){
                            self.isAnumating = true
                           
                        }
                    })
                                       
                }.tag(4)
            }.ignoresSafeArea()
           

            
        }.tabViewStyle(PageTabViewStyle())
            .indexViewStyle(.page(backgroundDisplayMode: .always ))
            
    
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
               
        }
    }
}
