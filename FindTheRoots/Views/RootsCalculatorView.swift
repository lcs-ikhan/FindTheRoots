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
    
    var result: String {
        let discriminant = b * b - 4 * a * c
        
        if discriminant < 0 {
            return "No real roots."
        } else {
            let x1 = ( b * -1 - discriminant.squareRoot() ) / (2*a)
            let x2 = (b * -1 + discriminant.squareRoot() ) / (2*a)
            return "x ≈ \(x1.formatted(.number.precision(.fractionLength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
        
        
    }
    
    
    var body: some View {
        
        VStack{
            HStack{
                
                Text("Find the roots")
                    .font(.title)
                
                Spacer()
                
            }
            VStack(spacing: 0){
                
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
                                   
                            Text("\(a)")
                        }
                        
                        Spacer()
                        
                        VStack {
                                Text("b")
                                .bold()
                            
                            
                            Slider(value: $b,
                                   in: -50...50,
                                   label: { Text("b") })
                                .frame(width:100)
                            
                            Text("\(b)")
                                   
                            
                          
                        }
                        
                        Spacer()
                        
                        VStack {
                                Text("c")
                                .bold()
                            
                            Slider(value: $c,
                                   in: -50...50,
                                   label: { Text("c") })
                            .frame(width:100)
                            
                            Text("\(c)")
                            
                        }
                        Spacer()
                    }
                    .font(Font.custom("Times New Roman",
                                         size: 24.0,
                                         relativeTo: .body))
                    
                   
                    
                                   
                }
                
                Text("x ≈ \(result)")

                Spacer()
              
              
                    
            }
            
        }
    }
}

struct RootsCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        RootsCalculatorView()
    }
}
