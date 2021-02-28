//
//  ViewWithModelAndPublishers.swift
//  StateToPublished
//
//  Created by Luke Smith on 26/02/2021.
//

import SwiftUI

struct ViewWithModelAndPublishers: View {
    
    @ObservedObject var viewModel = ViewWithModelVM()
    
    var body: some View {
        ChildViewWithBinding(showActionSheet: $viewModel.showActionSheet)
    }
}

struct ViewWithModelAndPublishers_Previews: PreviewProvider {
    static var previews: some View {
        ViewWithModelAndPublishers()
    }
}
