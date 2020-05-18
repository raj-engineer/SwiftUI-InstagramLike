//
//  LikeModifier.swift
//  InstagramLike
//
//  Created by Rajesh Rajesh on 18/05/20.
//  Copyright © 2020 Rajesh Rajesh. All rights reserved.
//

import Foundation
import SwiftUI
struct likeModifier: ViewModifier{
  //MARK: Properties
  @State var liked :  Bool  = false
  
  //MARK: Method
  func body(content : Content) -> some View{
    
    content.overlay(Image(systemName: "heart.fill").resizable().frame(width: 90, height: 90, alignment: .center).foregroundColor(.white).opacity(self.liked ? 0.6 : 0)
      .scaleEffect(self.liked ? 1.0 : 0)
      .animation(.easeInOut)
    ).onTapGesture(count: 2) {
      self.liked.toggle()
      DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
        self.liked.toggle()
      }
    }
  }
}
//MARK: Extension
extension View{
  func Like()-> some View{
    modifier(likeModifier())
  }
}

