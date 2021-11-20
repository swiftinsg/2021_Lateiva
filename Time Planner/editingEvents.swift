//
//  editingEvents.swift
//  Time Planner
//
//  Created by sanjithsethu on 20/11/21.
//

import SwiftUI

struct editingEvents: View {
    
    var eventss = [Event(name: "School", Location: "SST", date: "00/00/0000", time: "09:41am"),Event(name: "Swift Accelerator Programme", Location: "Tinkertanker", date: "01/00/0000", time: "09:41am"), Event(name: "SAP", Location: "Home", date: "01/00/0000", time: "09:41am"), Event(name: "Party", Location: "Jia Chen house", date: "01/00/0000", time: "09:41pm")]
    
    @State var eventName: String = ""
    @State var eventLocation: String = ""
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 1, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    
    var body: some View {
        VStack(alignment:.leading){
            Text("Editing Event")
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.4627450980392157, green: 0.4235294117647059, blue: 0.8196078431372549))
                .multilineTextAlignment(.leading)
                .font(.system(size: 50))
                .padding([.top, .leading, .trailing])
            
            Text("")
            
            
            Text("Name")
                .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                .font(.system(size: 24))
                .padding([.leading, .trailing])
                .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 80, alignment: .leading)
            
            TextField(text: $eventName, prompt: Text("Your event Name")){
                
            }
            .padding(.all)
            .disableAutocorrection(true)
            .textFieldStyle(.roundedBorder)
            .foregroundColor(Color(red: 0.461, green: 0.423, blue: 0.821))
            .frame(maxWidth: .infinity)
            
            Text("Location")
                .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                .font(.system(size: 24))
                .padding([.leading, .trailing])
                .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 80, alignment: .leading)
            
            
            TextField(text: $eventLocation, prompt: Text("Event Location")){
                
            }
            .padding(.all)
            .disableAutocorrection(true)
            .textFieldStyle(.roundedBorder)
            .foregroundColor(Color(red: 0.461, green: 0.423, blue: 0.821))
            
            //       Spacer()
            
            
            DatePicker(
                "Select Date and time",
                selection: $date,
                in: dateRange,
                displayedComponents: [.date, .hourAndMinute]
            )
            // .datePickerStyle(GraphicalDatePickerStyle())
                .font(.system(size: 22))
                .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 90, alignment: .leading)
                .padding(.all)
            
            Spacer()
            
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 60)
                    .foregroundColor(Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372))
                Text("Save")
                    .foregroundColor(.blue)
                    .font(.system(size: 20))
                
                
            }
            .padding(.horizontal)
            
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 60)
                    .foregroundColor(Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372))
                Text("Cancel")
                    .foregroundColor(.red)
                    .font(.system(size: 20))
            }
            .padding(.horizontal)
        }
    }
}

struct editingEvents_Previews: PreviewProvider {
    static var previews: some View {
        editingEvents()
    }
}
