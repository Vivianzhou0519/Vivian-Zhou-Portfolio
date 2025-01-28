import SwiftUI

struct ProjectDetailView: View {
    let project: Project
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                // Project Header
                HStack(alignment: .top, spacing: 16) {
                    Image(project.imageAssetName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    VStack(alignment: .center) {
                        Text(project.name)
                            .font(.customFont("Italiana-Regular", size: 48))
                            .foregroundColor(Color(hex: "532F2F"))
                            .multilineTextAlignment(.center)
                        
                        Text("Lead Designer and Frontend Engineer")
                            .font(.customFont("AbhayaLibre-SemiBold", size: 18))
                            .foregroundColor(Color(hex: "532F2F"))
                            .multilineTextAlignment(.center)
                        
                        Text(project.industry)
                            .font(.customFont("AbhayaLibre-SemiBold", size: 18))
                            .foregroundColor(Color(hex: "532F2F"))
                            .multilineTextAlignment(.center)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
                
                Image(project.imageWebsiteName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                
                // Project Details
                VStack(spacing: 16) {
                    SectionView(title: "Inspiration", content: project.inspiration)
                    
                    SectionView(title: "Problem", content: project.problem)
                    
                    BulletPointSection(title: "Implementation", points: project.implementation)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(.horizontal, 20)
        }
        .background(Color(hex: "F9F6F3"))
    }
}

struct SectionView: View {
    let title: String
    let content: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.customFont("Italiana-Regular", size: 24))
                .foregroundColor(Color(hex: "532F2F"))
            Text(content)
                .font(.customFont("AbhayaLibre-SemiBold", size: 18))
                .foregroundColor(Color(hex: "532F2F"))
        }
        .padding()
        .background(Color(hex: "D5D3DC"))
        .cornerRadius(8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 20)
    }
}

struct BulletPointSection: View {
    let title: String
    let points: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.customFont("Italiana-Regular", size: 24))
                .foregroundColor(Color(hex: "532F2F"))
            ForEach(points, id: \.self) { point in
                Text("• \(point)")
                    .font(.customFont("AbhayaLibre-SemiBold", size: 18))
                    .foregroundColor(Color(hex: "532F2F"))
            }
        }
        .padding()
        .background(Color(hex: "D5D3DC"))
        .cornerRadius(8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 20)
    }
}

#Preview {
    ProjectDetailView(project: .selleb)
} 
