//
//  ContentView.swift
//  InstagramLike
//
//  Created by Rajesh Rajesh on 17/05/20.
//  Copyright © 2020 Rajesh Rajesh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView{ Image("pic").resizable().aspectRatio(contentMode: .fit).Like()
      .navigationBarTitle("Instagram Like")
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
