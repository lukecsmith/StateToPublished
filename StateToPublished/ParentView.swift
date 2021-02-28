//
//  ParentView.swift
//  StateToPublished
//
//  Created by Luke Smith on 26/02/2021.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ViewWithStates()) {
                    Text("View with @State bool")
                }
                NavigationLink(destination: ViewWithModelAndPublishers()) {
                    Text("View with @Observable viewModel")
                }
            }
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
