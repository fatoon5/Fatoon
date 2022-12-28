//
//  ContentView.swift
//  Hadeel
//
//  Created by Fatoon albogami on 26/05/1444 AH.
//

import SwiftUI



struct GameView1: View {
    @GestureState var locationState1 = CGPoint(x: 50 , y:50)
    @State var location1 = CGPoint(x: 20 , y:20)
    @State var isAnimating = false
    @State var position: CGPoint = CGPoint(x: 50, y: 50)
    
    @Binding var showText1: Bool
    var body: some View {
        ZStack{
            VStack {
                Button(action: {
                    withAnimation {
                        self.showText1.toggle()
                    }
                }, label: {
                    Image("1")
                        .resizable()
                        .frame(width: 350 , height: 350 )
                        .scaleEffect(isAnimating ? 1 : 0.5)
                        .position(location1)
                    
                        .gesture(
                            DragGesture()
                                .onChanged{
                                    state in
                                    location1 = state.location
                                    
                                }
                                .updating($locationState1){
                                    currentState , PastLocation ,Transaction in
                                    PastLocation = currentState.location
                                    Transaction.animation = .easeInOut
                                }
                        )
                    
             })
//                .offset(x: 700, y: 200)
             
                
            }
            if self.showText1 {
                VStack {
                    Spacer()
                    HStack(alignment: .center){
                        Spacer()
                        Image("11")
                            .resizable()
                            .frame(width: 350 , height: 350)
                            .transition(.opacity)
                            .padding(.leading,-200)
                        
                      
                        Spacer()
                    } .padding(.trailing,700)
                        .padding(.bottom,300)
                    Spacer()
                }
            }
        }
    }
    
}
struct GameView3: View {
    @GestureState var locationState4 = CGPoint(x: 50 , y:50)
    @State var location4 = CGPoint(x: 20 , y:20)
    @State var isAnimating = false
    @State var position: CGPoint = CGPoint(x: 50, y: 50)
    
    @Binding var showText2: Bool
    var body: some View {
        ZStack{
           
                Button(action: {
                    withAnimation {
                        self.showText2.toggle()
                    }
                }, label: {
                    Image("3")
                        .resizable()
                        .frame(width: 350 , height: 350)
                        .scaleEffect(isAnimating ? 1 : 0.5)
                        .position(location4)
                        
                        .gesture(
                            DragGesture()
                                .onChanged{
                                    state in
                                    location4 = state.location
                                    
                                }
                                .updating($locationState4){
                                    currentState , PastLocation ,Transaction in
                                    PastLocation = currentState.location
                                    Transaction.animation = .easeInOut
                                }
                        )
//                        .offset(x: 400, y: 650)
                }
                )//.padding(.leading, 1000)
                //.padding(.top, 300)
                
            
            if self.showText2 {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image("33")
                            .resizable()
                            .frame(width: 350 , height: 350)
                            .transition(.opacity)
                           // .padding(.bottom ,150)
                      
                        Spacer()
                    }
                    Spacer()
                }.padding(.leading, -600)
                    .padding(.top, 200)
            }
        }
    }
    
}

struct GameView4: View {
    @GestureState var locationState1 = CGPoint(x: 50 , y:50)
    @State var location1 = CGPoint(x: 20 , y:20)
    @State var isAnimating = false
    @State var position: CGPoint = CGPoint(x: 50, y: 50)
    
    @Binding var showText4: Bool
    var body: some View {
        ZStack{
            VStack {
                Button(action: {
                    withAnimation {
                        self.showText4.toggle()
                    }
                }, label: {
                    Image("4")
                        .resizable()
                        .frame(width: 350 , height: 400)
                        .scaleEffect(isAnimating ? 1 : 0.5)
                        .position(location1)
                    
                        .gesture(
                            DragGesture()
                                .onChanged{
                                    state in
                                    location1 = state.location
                                    
                                }
                                .updating($locationState1){
                                    currentState , PastLocation ,Transaction in
                                    PastLocation = currentState.location
                                    Transaction.animation = .easeInOut
                                }
                        )
                    
             }) //.offset(x: -10, y: 100)
                
            }
            if self.showText4 {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image("44")
                            .resizable()
                            .frame(width: 250 , height: 350)
                            .transition(.opacity)
                        
                      
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
    }
    
}
struct GameView2: View {
    @GestureState var locationState3 = CGPoint(x: 50 , y:50)
    @State var location3 = CGPoint(x: 20 , y:20)
    @State var isAnimating = false
    @State var position: CGPoint = CGPoint(x: 50, y: 50)
    
    @Binding var showText3: Bool
    var body: some View {
        ZStack{
            VStack {
                Button(action: {
                    withAnimation {
                        self.showText3.toggle()
                    }
                }, label: {
                    Image("2")
                        .resizable()
                        .frame(width: 350 , height: 350)
//                        .padding(.leading,100)
//                        .padding(.top,100 )
                        .scaleEffect(isAnimating ? 1 : 0.5)
                        .position(location3)
                    
                        .gesture(
                            DragGesture()
                                .onChanged{
                                    state in
                                    location3 = state.location
                                    
                                }
                                .updating($locationState3){
                                    currentState , PastLocation ,Transaction in
                                    PastLocation = currentState.location
                                    Transaction.animation = .easeInOut
                                }
                        )
                     
                    
                }
                )
            }
            if self.showText3 {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image("22")
                          
                            .resizable()
                            .frame(width: 350 , height: 350)
//                            .padding(.leading,100)
//                            .padding(.top,100 )
//                            .padding(.leading, 180)
                            //.padding(.bottom ,150)
                            .transition(.opacity)
                      
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
    }
   
}

struct ContentView: View {
    
    //    @State var showText3 = false
    @State var showText2 = false
    @State var showText1 = false
    @State var showText3 = false
    @State var showText4 = false
    
    
    //    let width : CGFloat
    //    let height : CGFloat
    //    @Binding var degree : Double
    
    @GestureState var locationState3 = CGPoint(x: 50 , y:50)
    @State var location3 = CGPoint(x: 20 , y:20)
    @State var isAnimating = false
    @State var position: CGPoint = CGPoint(x: 50, y: 50)
    @State var ispresented = false
    
    var body: some View {
        ZStack {
            Image("B2")
                .resizable()
                .ignoresSafeArea()
                .frame(width: 1194 , height: 834 )
            
                Button{
                    ispresented = true
                }label: {
                    ZStack{
                        Rectangle()
                            .fill(.orange)
                            .frame(width: 195, height: 70)
                            .cornerRadius(35)
                        Text("Next")
                            .font(.title)
                        .foregroundColor(.black)}
                    .padding(.leading , 800)
                        .padding(.top , 600)

                }
                HStack{
                    
                    VStack{
                        
                        
                        GameView4(showText4: self.$showText4)
                        GameView2(showText3: self.$showText3)
                    }.padding(.leading,250)
                    //                        .padding(.top,7)
                    Spacer(minLength: 50)
                    
                    
                    VStack{
                        
                        GameView1(showText1: self.$showText1)
                        GameView3(showText2: self.$showText2)
                        
                        
                    } } .padding(.trailing,-600)
                    .padding(.top,150)
                
                
                
                
                
                
                
                
                
                
                //                Button(action: {
                //                    withAnimation {
                //                        self.showText.toggle()
                //                    }
                //                }, label: {
                //                   Image("2")
                //                        .resizable()
                //                        .frame(width: 100 , height: 100)
                //                        .scaleEffect(isAnimating ? 1 : 0.5)
                //                         .position(location3)
                //
                //                            .gesture(
                //                                DragGesture()
                //                                    .onChanged{
                //                                        state in
                //                                        location3 = state.location
                //
                //                                    }
                //                                    .updating($locationState3){
                //                                        currentState , PastLocation ,Transaction in
                //                                        PastLocation = currentState.location
                //                                        Transaction.animation = .easeInOut
                //                                    }
                //                            )
                //
                //                })
                
                
            }
            //            if self.showText {
            //                VStack {
            //                    Spacer()
            //                    HStack {
            //                        Spacer()
            //                        Image("1")
            //                            .resizable()
            //                            .frame(width: 100 , height: 100)
            //                            .transition(.opacity)
            //
            //                        Spacer()
            //                    }
            //                    Spacer()
            //                }
            //            }
            Spacer()
            
        }
        
        
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    

