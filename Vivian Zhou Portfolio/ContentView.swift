import SwiftUI
import AppKit

extension Font {
    static func customFont(_ name: String, size: CGFloat) -> Font {
        guard let customFont = NSFont(name: name, size: size) else {
            return .system(size: size)
        }
        return Font(customFont)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 32) {
                    // Header Section
                    VStack(spacing: 8) {
                        Text("Vivian Zhou")
                            .font(.customFont("Italiana-Regular", size: 48))
                            .foregroundColor(Color(hex: "532F2F"))
                        
                        Text("iOS Developer, UI/UX Designer, Software Engineer")
                            .font(.customFont("AbhayaLibre-SemiBold", size: 14))
                            .foregroundColor(Color(hex: "532F2F"))
                        
                        HStack(spacing: 4) {
                            Image(systemName: "mappin.circle.fill")
                                .foregroundColor(Color(hex: "532F2F"))
                            Text("San Francisco, New York City")
                                .font(.customFont("AbhayaLibre-SemiBold", size: 14))
                        }
                        .foregroundColor(Color(hex: "532F2F"))
                    }
                    .padding(.top, 40)
                    
                    // About Me Section
                    VStack(alignment: .leading, spacing: 12) {
                        Text("About Me")
                            .font(.customFont("Italiana-Regular", size: 24))
                            .foregroundColor(Color(hex: "532F2F"))
                        
                        HStack(spacing: 16) {
                            Image("profile")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 280)
                                .cornerRadius(4)
                            
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Born and raised in Shanghai, I got called to be a Cali girl a lot, specifically Irvine. Perhaps this is because my favorite dish is bulgogi, or malatang. Outside of munching, I am passionate about building tech products, and have been exploring the field with multiple early stage startups (overall reached 30k+ users). However, I only started coding in college. I self taught myself most of the engineering and UI/UX design skills (from a lot of youtube videos...) Why am I into early-stage startups? Because I have the autonomy to determine which direction the startup will be heading. I love talking to customers, the synthesis and finding the magic moment for them and be there for them. I have been a founder, an engineer, a designer. What do I like more? Probably eating. Just kidding. The answer is I don't have an answer yet. I love when creativity flows in and when my brain is filled with inspiration while designing. I also like when I can leverage the power of AI and delve deep into technical concepts when coding. The common thing about all of those, is that I am able to bring idea from zero to one, which is the thing that I enjoy the most. Therefore, I'd say I love being a founder the most. Not necessarily founder of a company but founder of my idea.")
                                    .font(.customFont("AbhayaLibre-SemiBold", size: 8))
                                    .foregroundColor(Color(hex: "532F2F"))
                                    .lineSpacing(4)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Vivian Zhou")
                                        .font(.customFont("AbhayaLibre-SemiBold", size: 8))
                                    Text("Computer Science (AI Track), Product Design (Digital Track)")
                                        .font(.customFont("AbhayaLibre-SemiBold", size: 8))
                                    Text("Stanford University")
                                        .font(.customFont("AbhayaLibre-SemiBold", size: 8))
                                }
                                .foregroundColor(Color(hex: "532F2F"))
                                .padding(.top, 8)
                            }
                        }
                    }
                    .padding()
                    .background(Color(hex: "D5D3DC"))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                    
                    // Projects Section
                    ProjectsSection()
                    
                    // Skillset Section
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Skillset")
                            .font(.customFont("Italiana-Regular", size: 24))
                            .foregroundColor(Color(hex: "532F2F"))
                        
                        HStack(alignment: .top, spacing: 40) {
                            SkillColumn(title: "Coding Languages", items: ["Python", "C++", "Javascript"])
                            SkillColumn(title: "Web / Mobile Development", items: ["Swift", "XCode", "React Native", "ReactJS", "NextJS", "HTML/CSS"])
                            SkillColumn(title: "Data Science & Machine Learning", items: ["SQL", "Vector databases", "PyTorch", "Numpy", "Pandas"])
                            SkillColumn(title: "Design, UI/UX", items: ["Adobe", "Figma", "Graphic Design", "CAD", "Photoshop"])
                        }
                    }
                    .padding()
                    .background(Color(hex: "D5D3DC"))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                    
                    // Photo Albums
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Photo Albums")
                            .font(.customFont("Italiana-Regular", size: 24))
                            .foregroundColor(Color(hex: "532F2F"))
                        
                        HStack(spacing: 16) {
                            PhotoCard(imageName: "paris", title: "2024 Paris Olympics")
                            PhotoCard(imageName: "bahamas", title: "Bahamas")
                        }
                    }
                    .padding()
                    .padding(.horizontal, 20)
                    
                    // Contact Section
                    VStack(spacing: 8) {
                        Text("If anything resonates with you,")
                            .font(.customFont("Italiana-Regular", size: 24))
                            .foregroundColor(Color(hex: "532F2F"))
                        Text("talk to me")
                            .font(.customFont("Italiana-Regular", size: 24))
                            .foregroundColor(Color(hex: "532F2F"))
                        
                        VStack(spacing: 4) {
                            Text("zhouv@stanford.edu")
                            Text("IG: vivian_zhouu")
                            Text("Twitter: vivianyuezhou")
                        }
                        .font(.customFont("AbhayaLibre-SemiBold", size: 14))
                        .foregroundColor(Color(hex: "532F2F"))
                    }
                    .padding(.vertical, 48)
                }
                .padding(.horizontal, 20)
            }
            .background(Color(hex: "F9F6F3"))
        }
    }
}

struct ProjectsSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Projects")
                .font(.customFont("Italiana-Regular", size: 24))
                .foregroundColor(Color(hex: "532F2F"))
            
            HStack(spacing: 16) {
                ForEach([Project.selleb, .jade, .axy], id: \.self) { project in
                    NavigationLink(destination: ProjectDetailView(project: project)) {
                        ProjectCard(project: project)
                    }
                }
            }
        }
        .padding()
        .padding(.horizontal, 20)
    }
}

struct ProjectCard: View {
    let project: Project
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Image(project.imageAssetName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 100, maxHeight: 100)
            
            Text(project.name)
                .font(.customFont("Italiana-Regular", size: 24))
                .frame(maxWidth: .infinity, alignment: .center)
            
            Text(project.techStack)
                .font(.customFont("AbhayaLibre-SemiBold", size: 12))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
            
            Text(project.category)
                .font(.customFont("AbhayaLibre-SemiBold", size: 12))
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .foregroundColor(Color(hex: "532F2F"))
        .padding(.vertical, 16)
        .frame(width: 150)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

struct SkillColumn: View {
    let title: String
    let items: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.customFont("AbhayaLibre-SemiBold", size: 14))
            ForEach(items, id: \.self) { item in
                Text("• " + item)
                    .font(.customFont("AbhayaLibre-SemiBold", size: 14))
            }
        }
        .foregroundColor(Color(hex: "532F2F"))
    }
}

struct PhotoCard: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack(spacing: 8) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
                .cornerRadius(8)
            
            Text(title)
                .font(.customFont("Italiana-Regular", size: 16))
                .foregroundColor(Color(hex: "532F2F"))
        }
        .frame(maxWidth: .infinity)
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

#Preview {
    ContentView()
}
