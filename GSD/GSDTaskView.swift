//
//  GSDTaskView.swift
//  GSDTests
//
//  Created by Maurice G on 11/28/22.
//

import SwiftUI

struct GSDTaskView: View {
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var impact: String = ""
    @State private var priority: GSDPriority = .low
    @State private var viewModel: GSDTaskVMImpl
    @State private var gsdPriorityCases: [GSDPriority] = GSDPriority.allCases
    
    init(viewModel: GSDTaskVMImpl) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.indigo
                VStack(spacing: 10) {
                    HStack {
                        Text("GSD Priorities")
                    }
                    .padding()
                    .foregroundColor(Color.gray)
                    
                    HStack {
                        Image(systemName: "t.square")
                            .frame(height: 40)
                            .padding(.horizontal, 5)
                        TextField("Title", text: $title)
                            .frame(height: 40)
                            .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 10)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.2)))
    
                    }
                    .padding(.horizontal, 10)
                    
                    HStack {
                        Image(systemName: "d.square")
                        TextField("Description", text: $title)
                            .frame(height: 200)
                            .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 10)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.2)))
                               
                    }
                    .padding(.horizontal, 10)
                    
                    HStack {
                        Image(systemName: "i.square")
                        ZStack {
                            TextField("Impact", text: $title)
                                .frame(height: 40)
                                .textFieldStyle(PlainTextFieldStyle())
                                    .padding([.horizontal], 10)
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.2)))
                        }
                    }
                    .padding(.horizontal, 10)
                    
                    VStack {
                        
                        HStack {
                            Text("Priority")
                                .padding(.horizontal, 10)
                            Picker("Choose a priority", selection: $priority) {
                                ForEach(gsdPriorityCases, id: \.self) {
                                    Text("\($0.rawValue) Priority")
                                        .foregroundColor(.indigo)
                                }
                            }
                        }
                        Button("Save Task") {
                            let task = GSDTask(title: title, date: Date(), description: description, impact: impact, priority: priority)
                            
                            viewModel.addTask(with: task)
                        }
                    }
                    .padding(.vertical, -20)
                    .foregroundColor(.gray)
                    .pickerStyle(.wheel)
                    
                }
                
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.2)))
                .background(Color.white)
                .cornerRadius(20)
                .frame(width: .infinity, height: geometry.size.height / 4)
                .padding(.horizontal, 5)
                .padding(.vertical, 40)
            }
            .ignoresSafeArea()
            .frame(width: .infinity, height: .infinity)
            
        }
    }
}

struct GSDTaskView_Previews: PreviewProvider {
    static var previews: some View {
        GSDTaskView(viewModel: GSDTaskVMImpl(storageSevice: StorageServiceImpl()))
    }
}

