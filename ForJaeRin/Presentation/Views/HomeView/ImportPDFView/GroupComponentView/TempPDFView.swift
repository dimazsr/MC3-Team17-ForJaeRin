//
//  TempPDFView.swift
//  ForJaeRin
//
//  Created by 이용준의 Macbook on 2023/07/20.
//

import SwiftUI

struct TempPDFView: View {
    @EnvironmentObject var myData: MyData
    var index: Int
    var imgSize: CGSize
    var hilight: Bool
    
    var body: some View {
        ZStack {
            // MARK: - Box Decoration
            RoundedRectangle(cornerRadius: 16)
                .fill(hilight ? Color.primary200 : .clear)
                .frame(maxWidth: imgSize.width, maxHeight: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(hilight ? Color.primary500 : .clear, lineWidth: 2)
                        .foregroundColor(Color.clear)
                        .frame(maxWidth: imgSize.width, maxHeight: .infinity)
                )
            VStack(spacing: 8) {
                if !myData.images.isEmpty {
                    Image(nsImage: myData.images[index])
                        .resizable()
                        .frame(width: imgSize.width - 16, height: (imgSize.width - 16) / 3 * 2)
                        .cornerRadius(10)
                    Text("\(index + 1)")
                        .systemFont(.caption2)
                        .foregroundColor(Color.systemGray300)
                }
            }
            .padding(.top, 8)
            .padding(.horizontal, 8)
            .padding(.bottom, 15)
        }
        .frame(maxWidth: imgSize.width, maxHeight: .infinity)
    }
}
