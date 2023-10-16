//
//  ToggleLanguage.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 10.10.2023.
//

import SwiftUI

struct ToggleLanguage: View {
    
    // MARK: - Properties
    
    @State var toggleLang: Bool = true
    @State var textRu = {
        Text("RU")
            .foregroundStyle(.blue)
    }()
    @State var textEn = {
        Text("EN")
    }()
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 8) {
            Toggle(isOn: $toggleLang, label: {
                textEn
                    .onChange(of: toggleLang) {
                        if toggleLang {
                            textRu = {
                                Text("RU")
                                    .foregroundStyle(.blue)
                            }()
                            textEn = {
                                Text("EN")
                                    .foregroundStyle(.white)
                            }()
                        } else {
                            textRu = {
                                Text("RU")
                                    .foregroundStyle(.white)
                            }()
                            textEn = {
                                Text("EN")
                                    .foregroundStyle(.blue)
                            }()
                        }
                    }
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .onTapGesture {
                        let hapticImact = UIImpactFeedbackGenerator(style: .rigid)
                        hapticImact.impactOccurred()
                    }
            })
            .toggleStyle(SwitchToggleStyle(tint: .clear))
            textRu
                .bold()
        } //: HStack
    }
}

// MARK: - Preview
#Preview {
    ToggleLanguage()
}
