import SwiftUI

struct PhoneNumber: View {
    @State private var phoneNumber = ""
    
    var body: some View {
            VStack {
                TextField("Enter Phone Number", text: $phoneNumber, onEditingChanged: { _ in
                    // Handle editing changes if needed
                }, onCommit: {
                    // Handle completion of editing if needed
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .padding(.horizontal)
                .multilineTextAlignment(.center)
                .font(.title)
                .keyboardType(.numberPad)
                .textContentType(.telephoneNumber)
                
                Text("Formatted Phone Number: \(formatPhoneNumber())")
                    .font(.headline)
                    .padding()
            }
        }
        
        func formatPhoneNumber() -> String {
            var cleanPhoneNumber = phoneNumber.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
            
            if cleanPhoneNumber.count >= 10 {
                // Check if the first digit is 8, and if so, change it to +7
                if cleanPhoneNumber.hasPrefix("8") {
                    cleanPhoneNumber = String(cleanPhoneNumber.dropFirst())
                }
                if cleanPhoneNumber.hasPrefix("9") {
                    cleanPhoneNumber = String(cleanPhoneNumber.dropFirst())
                }
                
                
                let areaCode = String(cleanPhoneNumber.prefix(3))
                let firstPart = String(cleanPhoneNumber[cleanPhoneNumber.index(cleanPhoneNumber.startIndex, offsetBy: 3)..<cleanPhoneNumber.index(cleanPhoneNumber.startIndex, offsetBy: 6)])
                let secondPart = String(cleanPhoneNumber[cleanPhoneNumber.index(cleanPhoneNumber.startIndex, offsetBy: 6)..<cleanPhoneNumber.index(cleanPhoneNumber.startIndex, offsetBy: 8)])
                let lastPart = String(cleanPhoneNumber.suffix(2))
                
                return "+7 (\(areaCode)) \(firstPart)-\(secondPart)-\(lastPart)"
            }
            return phoneNumber
        }
    }

struct ContentViewPreview: PreviewProvider {
    static var previews: some View {
        PhoneNumber()
    }
}

