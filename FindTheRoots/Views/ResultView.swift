//
//  ResultView.swift
//  FindTheRoots
//
//  Created by Isaad Khan on 2023-01-25.
//

import SwiftUI

struct ResultView: View {
    @State var desiredPrecision: Double = 1
    // MARK: Stored properties
    let somePriorResult: Result
    // MARK: Computed properties
    
    var body: some View{
        VStack{
            HStack(spacing: 30){
                Spacer()
                Text("a:\(somePriorResult.a.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                
                Text("b:\(somePriorResult.b.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                
                Text("c:\(somePriorResult.c.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                
                Spacer()
                
            }
            Text(somePriorResult.roots)
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(somePriorResult: resultForPreviews)
    }
}


