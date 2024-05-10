//
//  ContentView.swift
//  warcard
//
//  Created by Abdur Rahman on 8/5/24.
//

import SwiftUI

struct ContentView: View {
    
  @State private var playerCard = "card5"
   @State private var cpuCard = "card9"
  @State private  var playerScore = 0
  @State private  var cpuScore = 0
    
    var body: some View {
        ZStack {
           Image("background")
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    
                    //Generating two random number between 2 to 14
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand  = Int.random(in: 2...14)
                    
                    playerCard = "card" + String((playerRand))
                    cpuCard = "card" + String((cpuRand))
                    
                    
                    if(playerRand>cpuRand){
                        playerScore = playerScore+1
                    }else if (playerRand<cpuRand){
                        cpuScore  = cpuScore+1
                    }else{
                        playerScore=playerScore
                        
                        cpuScore=cpuScore
                    }
                    
                   
                    
                    
                } label: {
                    Image("dealbutton")
                   
                }

                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).foregroundColor(.white)
                            .padding(.bottom,10.0)
                        
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).foregroundColor(.white)
                            .padding(.bottom,10.0)
                        
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
       
    }
}

#Preview {
    ContentView()

}
