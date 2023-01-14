//
//  eyeTick.swift
//  eyetick2
//
//  Created by Nourah on 21/06/1444 AH.
//

import SwiftUI
import AVKit
class SoundManager {
    static let instance = SoundManager()
    var player : AVAudioPlayer?
    func playSound()
    {
        guard let url = Bundle.main.url(forResource: "resttime", withExtension: ".mp3") else {return}
        do {
            player = try AVAudioPlayer (contentsOf: url)
            player?.play()
        }catch let error {
            print("Error playing sound.\(error.localizedDescription)")
        }
    }
}

struct eyeTick: View {
    @State  var animatingCircle = false
    @State var pressStart = false
    @State var pressCancel = true
   
    
    ///
    //working time for 20 min
    // this is the condition to run the count down
    @State var timeRunning1 = false
    let  originalCD1 = 1200 // the value of the original countdown of working time 20 min
    let minNum = 20// time of working in minutes
    @State var countDown1 = 1200
    let timer1 = Timer.publish(every: 1, on: .main , in: .common).autoconnect()
   @State var timeRemaining: String =  ""
   @State var futureDate : Date = Calendar.current.date(byAdding: .minute, value: 20 , to: Date()) ?? Date()
    func  updateTimeRemaining(){
        let remaining = Calendar .current.dateComponents([.minute,.second] , from: Date(), to: futureDate)
        let minute = remaining.minute ?? 0
        let second = remaining.second ?? 0
        timeRemaining = "\(minute):\(second)"
    }
    
    // end working time
    // rest time for 20 sec
    @State var timeRunning2 = false
    let  originalCD2 = 20 // the value of the original countdown of rest time 20 min
    @State var countDown2 = 20
    let timer2 = Timer.publish(every: 1, on: .main , in: .common).autoconnect()
    @State var RC = 20;// repeated count for circles animation
   

    ////end rest time
    
    @State var drawRing = 1/20 //draw the progress ring (trimming)
    //@State var drawRing2 = 1/20
   // @State var timerOn = false
    @State var drawingDuration = 1200 // the time for drawing timer ring
    @State var animatingRing = false
    
  
    var body: some View {
       // NavigationView{
          //  GeometryReader{ goe in
                ZStack{
                   // Image("background")
                    
                    
                   Image("background").resizable()
                       
                       // .background(Color(red: 0.932, green: 0.917, blue: 0.883))
                    //.aspectRatio(1152/693,contentMode: .fill).scaledToFit() .ignoresSafeArea()
                        .aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity)//.scaledToFit()
                        .ignoresSafeArea().offset(y: 30)
                 
                       
                  
                    
                    
                    VStack (spacing: 0){
                        HStack
                        { Text("Welcome to").font(.system(size: 40, weight: .regular))//.opacity(0.80)
                               
                            HStack{ Text("EyeTick").font(.system(size: 40, weight: .medium))
                            }
                           
                        }.frame(width: 390, height: 261)//.background(.pink)
                        
                        ZStack {
                           
                            
                            ZStack{
                                ZStack{
                                    //timer ( circle)
                                    
                                    Circle()
                                        .trim(from: 0, to: animatingRing ? CGFloat(drawRing) : 0)
                                      
                                        .stroke(style: StrokeStyle(lineWidth: 8,lineCap: .round, lineJoin: .round))
                                         
                                        .rotationEffect(.degrees(-90))
                                            .foregroundColor(Color(red: 0.857, green: 0.667, blue: 0.183) )
                                    // .animation(Animation.linear(duration: Double(drawingDuration)), value: drawRing)
                                    
                                    
                                    
                                    
                                    
                                    Circle()//.stroke(style: 8.0)//.frame(width:215 , height: 215)
                                      //  .trim(from: 0, to: animatingRing ? CGFloat(drawRing) : 0)// )
                                        .trim(from: 0, to: timeRunning2 ? CGFloat(drawRing) : 0)
                                       // .trim(from: 0, to: 1/20)
                                        .stroke(style: StrokeStyle(lineWidth: 8,lineCap: .round, lineJoin: .round))
                                      //  .frame(width: animatingRing ? 235 : 0, height:  animatingRing ? 235 : 0)
                                       
                                        .rotationEffect(.degrees(-90))
                                        //.foregroundColor(timeRunning1 ? .yellow : Color(red: 0.932, green: 0.917, blue: 0.883) )
                                        .foregroundColor(Color(red: 0.932, green: 0.917, blue: 0.883) )
                                     .animation(Animation.linear(duration: Double(2)), value: drawRing)
                                    
                                    
                                    
                                
                                    // end timer (circle)
                                    
                                    
                                    
                                } .frame(width: 235, height: 235)
                                //.frame(width: 235,height: 235)
                                
                                
                              // first circle UIColor..init(hex:"9DC5CF")
                                Circle().frame(width:215 , height: 215)
                                    .foregroundStyle(.linearGradient(colors: [Color(red: 0.581, green: 0.734, blue: 0.766), Color(red: 0.772, green: 0.914, blue: 0.95)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                 
                                      
                                       .offset(x: animatingCircle ? 60: 0, y: animatingCircle ? -100 : 0)
                            
                                // end first circle
                                
                                // second circle
                                Circle().frame(width:170 , height: 170)
                                    .foregroundStyle(.linearGradient(colors: [Color(red: 0.31, green: 0.631, blue: 0.746), Color(red: 0.456, green: 0.821, blue: 0.846)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                   .offset(x: animatingCircle ? -60: 0, y: animatingCircle ? 100 : 0)
                                                                      
                              
                                // third circle
                                  Circle().frame(width:121 , height: 121)
                                    .foregroundStyle(.linearGradient(colors: [Color(red: 0.485, green: 0.676, blue: 0.569), Color(red: 0.27, green: 0.675, blue: 0.452)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                                      
                                                                      .offset(x: animatingCircle ? -60: 0, y: animatingCircle ? -100 : 0)
                                    
                                                                      
                                
                                // 4th circle
                                  Circle().frame(width:83 , height: 83)
                                                                      .foregroundStyle(.linearGradient(colors: [.white, .white], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                                                .offset(x: animatingCircle ? 0 : 0, y: animatingCircle ? -100 : 0)
                                                                      
                                  // end 4th circle
                                
                                // 5th circle
                                  Circle().frame(width:53 , height: 53)
                                                                      .foregroundStyle(.linearGradient(colors: [Color(red: 0.324, green: 0.603, blue: 0.42), Color(red: 0.186, green: 0.453, blue: 0.278)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                                      //.animation(Animation.easeInOut(duration: 1).repeatCount(20, autoreverses: true))
                                                                      //.scaleEffect(animatingCircle ? 2.0 : 1.0)
                                                                      .offset(x: animatingCircle ? 60: 0, y: animatingCircle ? 100 : 0)
                                                              
                                  // end 5th circle
                    
                                
                                
                                
                                
                                
                                
                          
                            }
                           // Spacer()
                        
//
                            
                            
                            //                .foregroundStyle(.LinearGradient( colors: [.cyan,.green], startPoint:.topLeading, endPoint: .bottomTrailing))
                        }.frame(width: 390,height: 246)//.background(.yellow)
                        
                     // start start cancel buttons
                        HStack(spacing: 160){
                        
                            
                            Button (action:{
                                pressCancel.toggle()
                                pressStart.toggle()
                                timeRunning1 = false
                                timeRunning2 = false
                                animatingCircle = false
                                countDown1 = originalCD1
                                countDown2 = originalCD2
                             
                               
                                withAnimation(.easeInOut(duration: 1).repeatCount(0, autoreverses: true))
                                {
                                 
                                    animatingCircle.toggle()
                                    
                                }
                               animatingCircle = false
                               
                                    withAnimation(.linear(duration: Double(0)))
                                    {
                                        animatingRing.toggle()
                                        
                                    }
                                animatingRing = false
                                
                            }, label: {
                                ZStack{
                                    Circle().frame(width:85 , height: 85).foregroundColor(pressCancel ? Color(red: 0.807, green: 0.812, blue: 0.773) : Color(red: 0.333, green: 0.671, blue: 0.798))
                                    Text("Cancel").font(.system(size: 24, weight: .medium))
                                    .foregroundColor(pressCancel ? Color(red: 0.588, green: 0.588, blue: 0.588) : .white)}
                            }).disabled(pressCancel)
                            Button (action:{
                               // RC = 20
                                pressStart.toggle()
                                pressCancel = false
                                futureDate = Calendar.current.date(byAdding: .minute, value: minNum , to: Date()) ?? Date()
                                countDown1 = originalCD1
                                timeRunning1 = true
                                drawRing = 1
                              // animatingCircle = true
                            
                            
                            
                            }, label: {
                                ZStack{
                                    Circle().frame(width:85 , height: 85).foregroundColor(pressStart ? Color(red: 0.807, green: 0.812, blue: 0.773) : Color(red: 0.494, green: 0.664, blue: 0.504) )
                                    Text("Start").font(.system(size: 24, weight: .medium))
                                    .foregroundColor(pressStart ? Color(red: 0.588, green: 0.588, blue: 0.588): .white)}
                            }).disabled(pressStart)
                        }.frame(width: 390,height: 111).offset(y:30)//.background(.blue)
                        // end start cancel buttons
                        
                        
                        
                        //working time for 20 min
                        HStack
                        {
                            if timeRunning1
                            {
                                
                                Text(timeRemaining).offset(y: -15)
                                
                                    .font(.system(size: 72, weight: .light))//.opacity(0.80)
                                    .onReceive(timer1, perform: { _ in
                                        //if countDown1 > 0 && timeRunning1
                                        if countDown1 > 0
                                        {
                                            
                                            updateTimeRemaining()
                                            countDown1 -= 1
                                        }else
                                        {
                                            timeRunning1 = false
                                            countDown2 = originalCD2
                                            timeRunning2 = true
                                            
                                        }
                                        
                                        
                                    })
                                    .onAppear
                                {
                                    // animatingRing = true
                                    withAnimation(.linear(duration: Double(drawingDuration)))
                                    {
                                        animatingRing.toggle()
                                        
                                    }
                                    
                                    
                                    
                                }
                                
                                
                            }
                            
                            //// end working time
                            
                            
                            
                            // rest time for 20 sec
                            if timeRunning2
                                
                            {
                               
                                HStack { Text("\(countDown2)")//.foregroundColor(.white)
                                        .font(.system(size: 72, weight: .light))
                                    Text("Sec") .font(.system(size: 24, weight: .light))
                                }.offset(y: -15)//.opacity(0.80)
                                    .onReceive(timer2){ _ in
                                        //  if countDown2 > 0 && timeRunning2
                                        if countDown2 > 0
                                        {
                                            countDown2 -= 1
                                        }else
                                        {
                                            timeRunning2 = false
                                            futureDate = Calendar.current.date(byAdding: .minute, value: minNum , to: Date()) ?? Date()
                                            countDown1 = originalCD1
                                            timeRunning1 = true
                                            animatingCircle = false
                                            
                                        }
                                    }
                                    .onAppear{
                                        SoundManager.instance.playSound()
                                        //                                    if pressCancel
                                        //                                    {
                                        //                                        RC = 0
                                        //                                    }
                                        
                                        withAnimation(.easeInOut(duration: 1).repeatCount(RC, autoreverses: true))
                                        {
                                            animatingCircle.toggle()
                                            
                                        }
                                        animatingRing = false
                                    }
                                
                            }
                            
                        }.padding(.bottom, 0.0).frame(width: 390,height: 226)//.background(.mint)
                        //// end rest time
                        
                        
                        
                    }.padding(.bottom, 0.0).foregroundColor(Color(red: 0.039, green: 0.251, blue: 0.308))  } //}
          
       
        
            
    }
}

struct eyeTick_Previews: PreviewProvider {
    static var previews: some View {
        eyeTick()
            .padding(0.0)
    }
}
