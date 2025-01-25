import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack { // 使用 NavigationStack 实现导航
            ZStack {
                Color.black // 背景色，匹配通知样式
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 10) {
                    // 顶部 Logo and now
                    HStack {
                        Image("logo") // 替换为实际的 logo 名称
                            .resizable()
                            .frame(width: 40, height: 40) // 设置 Logo 尺寸
                            .cornerRadius(10)
                            .padding(.leading, 10)
                        
                        Spacer()
                        Text("Now") // "Now" text
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                            .padding(.trailing, 10)
                    }
                    
                    Spacer()
                    
                    // 标题和内容
                    VStack(alignment: .leading, spacing: 5) {
                        Text("wakuwaku") // 标题
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Great sleep boosts reaction times by 20%, so rest well tonight to crush tomorrow’s challenges!") // 内容
                            .font(.body)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading) // 左对齐
                            .lineLimit(2) // 设置最多显示两行
                            .frame(maxWidth: .infinity, alignment: .leading) // 确保文字占满宽度并左对齐
                    }
                    .padding(.horizontal, 10)
                    
                    Spacer()
                    
                    // “View” 按钮
                    NavigationLink(destination: WatchPageView()) { // 跳转到 WatchPageView
                        Text("View")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 10)
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
            .previewDevice("Apple Watch Series 8 (45mm)") // 根据需要调整设备
    }
}

