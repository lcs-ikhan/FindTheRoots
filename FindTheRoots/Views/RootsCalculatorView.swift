//
//  RootsCalculatorView.swift
//  FindTheRoots
//
//  Created by Isaad Khan on 2023-01-24.
//

import SwiftUI

struct RootsCalculatorView: View {
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
            }
            
        }
    }
}

struct RootsCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        RootsCalculatorView()
    }
}
