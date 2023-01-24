//
//  RootsCalculatorView.swift
//  FindTheRoots
//
//  Created by Isaad Khan on 2023-01-24.
//

import SwiftUI

struct RootsCalculatorView: View {
    
    @State var a: Double = 0
    @State var b: Double = 0
    @State  var c: Double = 0
    
    
    var body: some View {
        
        VStack{
            HStack{
                
                Text("Find the roots")
                    .font(.title)
                
                Spacer()
                
            }
            VStack(spacing: -50){
                
                Image("Quadratic Formula")
                    .resizable()
                    .scaledToFit()
                    .frame(width:300, height: 200)
                
                Image("Quadratic")
                    .resizable()
                    .scaledToFit()
                    .frame(width:250, height: 200)
                
                HStack{
                    Group{
                        Spacer()
                        
                        VStack {
                            Text("a")
                                .bold()
                            
                            Slider(value: $a,
                                   in: -50...50,
                                   label: { Text("a")})
                            .frame(width:100)
                                   
                            Text("\(b)")
                        }
                        
                        Spacer()
                        
                        VStack {
                                Text("b")
                                .bold()
                            
                            
                            Slider(value: $b,
                                   in: -50...50,
                                   label: { Text("a") })
                                .frame(width:100)
                            
                            Text("\(b)")
                                   
                            
                          
                        }
                        
                        Spacer()
                        
                        VStack {
                                Text("c")
                                .bold()
                            
                            Slider(value: $b,
                                   in: -50...50,
                                   label: { Text("a") })
                            .frame(width:100)
                            
                            Text("\(c)")
                            
                        }
                        Spacer()
                    }
                    
                    
                                   
                }
                
            }
        }
    }
}

struct RootsCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        RootsCalculatorView()
    }
}
