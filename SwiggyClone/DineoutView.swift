//
//  ContentView.swift
//  SwiggyClone
//
//  Created by Personal on 28/07/24.
//

import SwiftUI

struct DineoutView: View {
    var items: [String] = [
        "item1",
        "item2",
        "item3",
        "item4",
        "item5",
        "item6",
        "item7",
        "item8",
        "item9",
        "item10",
        "item11",
        "item12",
        "item13",
        "item14",
        "item15",
        "item16"
    ]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(Array(items.enumerated()), id: \.1) { index, item in
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: UIScreen.main.bounds.width - 100, height: 160)
                        }
                    }
                    .padding(.horizontal)
                }
                VStack {
                    Divider()
                        .padding(.horizontal)
                        .padding(.bottom, 3)
                    HStack {
                        Text("Extra 10% cashback")
                            .font(.system(size: 12, weight: .bold))
                        Text("using")
                            .font(.system(size: 12))
                            .padding(.leading, -5)
                        RoundedRectangle(cornerRadius: 2)
                            .frame(width: 30, height: 20)
                        Text("Swiggy HDFC Bank Credit Card")
                            .font(.system(size: 10))
                    }
                    Divider()
                        .padding(.horizontal)
                }
                .padding(.vertical)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(Array(items.enumerated()), id: \.1) { index, item in
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 65, height: 70)
                                .padding(.leading, index == 0 ? 15 : 5)
                                .padding(.trailing, index == items.count - 1 ? 15 : 5)
                        }
                    }
                }
                RoundedRectangle(cornerRadius: 10)
                    .padding()
                    .padding(.top)
                    .frame(width: UIScreen.main.bounds.width, height: 140)
                
                HStack(alignment: .center) {
                    Text("WHAT'S HOT ON DINEOUT")
                        .font(.system(size: 14))
                        .lineLimit(1)
                        .layoutPriority(1)
                    Image("dividerImage")
                        .resizable()
                        .frame(height: 1)
                }
                .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(Array(items.enumerated()), id: \.1) { index, item in
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 200, height: 35)
                        }
                    }
                    .padding(.horizontal)
                }
                    
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(Array(self.items.enumerated()), id: \.1) { item, index in
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: UIScreen.main.bounds.width - 50, height: 250)
                        }
                    }
                    .padding()
                }
                
                HStack(alignment: .center) {
                    Text("ADITYA, WHAT'S ON YOU MIND?")
                        .font(.system(size: 14))
                        .lineLimit(1)
                        .layoutPriority(1)
                    Image("dividerImage")
                        .resizable()
                        .frame(height: 1)
                }
                .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        LazyHGrid(rows: [GridItem(.fixed(100)), GridItem(.fixed(100))], content: {
                            ForEach(Array(self.items.enumerated()), id: \.1) { (item, index) in
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 100)
                            }
                        })
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
                
                HStack(alignment: .center) {
                    Text("FEATURED THIS WEEK")
                        .font(.system(size: 14))
                        .lineLimit(1)
                        .layoutPriority(1)
                    Image("dividerImage")
                        .resizable()
                        .frame(height: 1)
                }
                .padding(.horizontal)

                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(Array(items.enumerated()), id: \.1) { index, item in
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: UIScreen.main.bounds.width - 60, height: 300)
                        }
                    }
                    .padding()
                }
                
                HStack(alignment: .center) {
                    Text("POPULAR LOCATIONS")
                        .font(.system(size: 14))
                        .lineLimit(1)
                        .layoutPriority(1)
                    Image("dividerImage")
                        .resizable()
                        .frame(height: 1)
                }
                .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(Array(items.enumerated()), id: \.1) { index, item in
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 100, height: 100)
                                .padding(.leading , index == 0 ? 0 : 10)
                        }
                    }
                    .padding(.horizontal)
                }
                
            }
        }
    }
}

#Preview {
    DineoutView()
}
