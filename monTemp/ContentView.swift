//
//  ContentView.swift
//  monTemp
//
//  Created by saad  on 04/02/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import SwiftUI
struct ContentView: View {
@State var name: String = ""
    

  @State var temp: Double = 17.0

    @State var selection = 0
    
    @State var temp2: Int = 0

    
    let setTemp = [ "-5", "-3", "-1", "0", "2", "4", "6", "8", "10", "15", "20", "22", "24", "25", "26", "30" ]
      
      let modeDeChoix = ["l'été", "l'automn", "le hiver", "le printemps"]
    
var backgroundColor: Color {temp > 17 ? .red : .blue }

    
var body: some View {
    NavigationView{

ZStack {
       
    //1.
    VStack {
            TabView {
            VStack{
                   HStack{
                    backgroundColor
                    .edgesIgnoringSafeArea(.all)
        if temp > 20 {
            VStack{
                
                Image(systemName: "thermometer.sun")
                
            Text("il fait ")
            Text("chaud")
                }.padding()
          //  Color.green

        }else{
            VStack{
                
                Image(systemName: "thermometer.snowflake")

            Text("il fait")
            Text("froid")
          //  Color.yellow
            }.padding()
        }
                                        VStack{
        
        Slider(value: $temp, in : -5...35, step: 0.5)
        .background(Color.gray)

            .padding()
                                            
                                            Text(" c'est \( Int (temp) )°C ")

                                        }
                                            }}
        .tabItem {
            
                
                Image(systemName: "slider.horizontal.3")
                Text("Slider")
        
        
                                        }
        
         //2.
                                        VStack{
                                            
                                            Picker(selection: $selection, label: Text(" Choisissez")       .font(.subheadline).padding().cornerRadius(10).frame(width: 120)){
            
            
        ForEach(0 ..< modeDeChoix.count) { index in
            
            Text(self.modeDeChoix[index]).frame(width: 150).tag(index).padding()
            }
        }.padding(.horizontal, 0.0)
        Spacer()
            Text("Vous avez déja choisi \(modeDeChoix[selection]) !")
                                                .font(.title)
                .foregroundColor(Color.black)
                .padding()
                                             }
       .tabItem {
                  
                      
                      Image(systemName: "tornado")
                      Text("Saison")
              
              
                                              }// Spacer()
          //3.
                                        VStack{
        // Form{
             Picker(selection: $temp2, label: Text("choisir")){
                     ForEach(0 ..< setTemp.count) { index in
                    
                Text(self.setTemp[index]).tag(index)
                     }
                 }.padding()
             
                Text("la temperature de votre choix est \(setTemp[temp2]) °C")
                     .fontWeight(.bold)
                     .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.all)
     //   }
                                        }
        .tabItem {
                   
                       
                       Image(systemName: "thermometer")
                       Text("Température")
               
               
                                               }
                
    //4.
                ZStack{
                
                    
                    backgroundColor
                       .edgesIgnoringSafeArea(.all)
                                
                            
                    
                    VStack (alignment: .leading, spacing: 20){

                   
                        // 1.
                        Text("Mon favorits:")
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        
                        // 2.
                        HStack {
                            Text("Température: ")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            TextField("entrer votre température preferée", text: $name)
                            .border(Color.gray)                        .font(.body)
                            .background(Color.white)

                        }
                        
                        
                        Text("ou")
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        
                        HStack {
                            Text("Saison:             ")
                                .font(.body).fontWeight(.bold)
                                .foregroundColor(Color.white)
                        TextField("entrer votre prsaison preferée", text: $name)
                            .border(Color.gray)                        .font(.body)                    .background(Color.white)


                        }
                        
                    
                        Spacer()
                        
                        
                     //   NavigationLink( destination: Page()) {
                                         Text("Sauvgarder")
                                             
                                             .padding()
                                             .background(Color.green)
                                             .foregroundColor(Color.white)
                                             .cornerRadius(10)
                                         
                     //   }
                    }
                    .padding()
                    .font(.title)
                }
                .tabItem {
                                  
                                      
                                      Image(systemName: "star.circle.fill")
                                      Text("Mon favorit")
                              
                              
                                                              }
        


    }.background(backgroundColor)

    
    
    }
    
}.navigationBarTitle(Text("Mon Apparail"), displayMode: .inline).navigationBarItems(leading: Image (systemName: "chevron.left"), trailing: Text("Favorit"))
        
        
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*Text(" Controller Votre appareil :) ")
.rotationEffect(.degrees( -90))*/

//func creatbackgroundColor() -> {temp > 30 ? .red : .blue }



/* PickerView(section : $section) {
            
                    
                    if section == .AA {
                        CategoryRow(choixSegmented: "choisir par session")

                    }else{
                        CategoryRow(choixSegmented: "choisir par temperature")
                    }
                    Spacer()
                }
                .navigationBarTitle(Text("Mon Choix"), displayMode: .inline)
                }

        }
}*/
