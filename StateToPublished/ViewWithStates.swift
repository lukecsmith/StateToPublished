//
//  ViewWithStates.swift
//  StateToPublished
//
//  Created by Luke Smith on 26/02/2021.
//

import SwiftUI

struct ViewWithStates: View {
    
    @State var showSheet = false
    
    var body: some View {
        ChildViewWithBinding(showActionSheet: $showSheet)
    }
}

struct ViewWithStates_Previews: PreviewProvider {
    static var previews: some View {
        ViewWithStates()
    }
}
