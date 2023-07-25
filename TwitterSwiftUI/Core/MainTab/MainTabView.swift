//
//  MainTabView.swift
//  TwitterSwiftUI
//
//  Created by 정회승 on 2023/07/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex: Int = 0
    
    let numTabs = 4
    let minDragTranslationForSwipe: CGFloat = 50
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
                .highPriorityGesture(DragGesture().onEnded({
                                self.handleSwipe(translation: $0.translation.width)
                            }))
            
            ExploreView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
                .highPriorityGesture(DragGesture().onEnded({
                                self.handleSwipe(translation: $0.translation.width)
                            }))
            
            NotificationsView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "bell")
                }.tag(2)
                .highPriorityGesture(DragGesture().onEnded({
                                self.handleSwipe(translation: $0.translation.width)
                            }))
            
            MessagesView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "envelope")
                }.tag(3)
                .highPriorityGesture(DragGesture().onEnded({
                                self.handleSwipe(translation: $0.translation.width)
                            }))

        }
    }
    
    private func handleSwipe(translation: CGFloat) {
        if translation > minDragTranslationForSwipe && selectedIndex > 0 {
            selectedIndex -= 1
        } else  if translation < -minDragTranslationForSwipe && selectedIndex < numTabs - 1 {
            selectedIndex += 1
        } else { return }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
