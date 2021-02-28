//
//  ChildViewWithBinding.swift
//  StateToPublished
//
//  Created by Luke Smith on 26/02/2021.
//

import SwiftUI

struct ChildViewWithBinding: View {
    
    @Binding var showActionSheet: Bool
    
    var body: some View {
        VStack {
            Text("This view has action sheet attached")
            Button("Show action sheet", action: { showActionSheet = true })
        }.fullScreenCover(isPresented: $showActionSheet, content: {
            Text("Action sheet contents")
            Button("Close action sheet", action: { self.showActionSheet = false })
        })
    }
}

struct ChildViewWithBinding_Previews: PreviewProvider {
    static var previews: some View {
        ChildViewWithBinding(showActionSheet: .constant(false))
    }
}
