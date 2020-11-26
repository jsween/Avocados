//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Jonathan Sweeney on 11/10/20.
//

import SwiftUI

struct RipeningStagesView: View {
    
    // MARK: - PROPERTIES
    
    var ripeningStages: [Ripening] = ripeningData
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                HStack(alignment: .center, spacing: 25, content: {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                })
                .padding(.vertical)
                .padding(.horizontal, 25)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
