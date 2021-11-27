//
//  startTimeVC.swift
//  Time Planner
//
//  Created by sanjithsethu on 20/11/21.
//
/*
 let today = Date()
 let formatter1 = DateFormatter()
 DateFormatter().dateStyle = .short
 print(DateFormatter().string(from: Date()))
 */

import SwiftUI

struct startTimeVC: View {
    
    init(setsa: Binding<[ActivitySets]>) {
        self._setsa = setsa
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color(red: 0.4627450980392157, green: 0.4235294117647059, blue: 0.8196078431372549))]
        
        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))]
    }
    
    @Binding var setsa: [ActivitySets]
    var timeDiff: Int {
        return (Calendar.current.dateComponents([.minute], from: date, to: date1).minute ?? 0)
    }
    @State private var date = Date()
    @State private var date1 = Date()
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 1, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    var time1 = [0]
    
    var body: some View {
        Form{
            //                Text("Hello,")
            //                    .fontWeight(.heavy)
            //                    .foregroundColor(Color(red: 0.4627450980392157, green: 0.4235294117647059, blue: 0.8196078431372549))
            //                    .multilineTextAlignment(.leading)
            //                   .font(.system(size: 50))
            //                   .padding(.all)
            
            
            
            
            //                    .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
            //                    .font(.system(size: 20))
            //                    .lineLimit(3)
            //                    .fixedSize(horizontal: false, vertical: true)
            //                    .padding()
            
            
            Section {
                DatePicker(
                    "",
                    selection: $date,
                    in: dateRange,
                    displayedComponents: [.hourAndMinute]
                ).datePickerStyle(WheelDatePickerStyle())
                    .padding([.bottom, .trailing])
                    .font(.system(size: 13))
                    .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                    .frame(maxWidth: .infinity, maxHeight: 150, alignment: .leading)
            } header: {
                Text("When would you like to start getting ready?")
            }

            //                    .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
            //                    .font(.system(size: 20))
            //                    .lineLimit(3)
            //                    .padding(.all)
            //                    .fixedSize(horizontal: false, vertical: true)
            
            
            Section {
                DatePicker(
                    "",
                    selection: $date1,
                    in: dateRange,
                    displayedComponents: [.hourAndMinute]
                ).datePickerStyle(WheelDatePickerStyle())
                    .padding([.bottom, .trailing])
                    .font(.system(size: 13))
                    .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                    .frame(maxWidth: .infinity, maxHeight: 150, alignment: .leading)
            } header: {
                Text("When would you like to leave your house?")
            }
            
            
            //                ZStack{
            //                    RoundedRectangle(cornerRadius: 15)
            //                        .frame(maxWidth: .infinity, minHeight: 60)
            //                        .foregroundColor(Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372))
            //
            //                    Button {
            //
            //                    } label: {
            //                        NavigationLink(destination: chooseActivitySetVC(set: $setsa, timeDiff: timeDiff)){
            //                            Text("Continue")
            //                                .foregroundColor(.blue)
            //                                .font(.system(size: 18))
            //                                .frame(maxWidth: .infinity, minHeight: 60)
            //                        }
            //                    }
            //
            //                }
            //                .padding(.horizontal)
            NavigationLink(destination: chooseActivitySetVC(set: $setsa, timeDiff: timeDiff)){
                Button {
                    
                } label: {
                    
                    Text("Continue")
                        .foregroundColor(.blue)
                        .font(.system(size: 18))
                        .frame(maxWidth: .infinity, minHeight: 60)
                    
                }
            }
            
            
            /*
             ZStack{
             RoundedRectangle(cornerRadius: 15)
             .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 60)
             .foregroundColor(Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372))
             Button {
             
             } label: {
             Text("Cancel")
             .foregroundColor(.red)
             .font(.system(size: 18))
             .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 60)
             }
             }
             .padding(.horizontal)
             */
            
            // Spacer()
        }
        .navigationBarTitle(Text("Hello"))
        .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
        
        
        
    }
    
    struct startTimeVC_Previews: PreviewProvider {
        static var previews: some View {
            startTimeVC(setsa: .constant([]))
        }
    }
}
