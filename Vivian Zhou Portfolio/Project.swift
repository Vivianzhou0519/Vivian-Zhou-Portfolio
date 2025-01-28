import Foundation

enum Project: Hashable {
    case selleb, jade, axy
    
    var name: String {
        switch self {
        case .selleb: return "Selleb"
        case .jade: return "Jade"
        case .axy: return "Axy"
        }
    }
    
    var imageAssetName: String {
        switch self {
        case .selleb: return "selleb-logo"
        case .jade: return "jade-logo"
        case .axy: return "axy-logo"
        }
    }
    
    var imageWebsiteName: String {
        switch self {
        case .selleb: return "sellebwebsite"
        case .jade: return "jadewebsite"
        case .axy: return "axyapp"
        }
    }
    
    var techStack: String {
        switch self {
        case .selleb: return "SwiftUI, XCode, Figma"
        case .jade: return "HTML/CSS, Javascript, Figma"
        case .axy: return "React Native, Javascript, Python, HTML/CSS, Figma, Terra API"
        }
    }
    
    var category: String {
        switch self {
        case .selleb: return "Fashion Tech                                           "
        case .jade: return "Fashion Tech                                             "
        case .axy: return "Mental Wellness                                           "
        }
    }
    
    var industry: String {
        switch self {
        case .selleb: return "Social Commerce / Product Discovery"
        case .jade: return "Fashion Tech"
        case .axy: return "Mental Wellness"
        }
    }
    
    var inspiration: String {
        switch self {
        case .selleb: return "Selleb is building a unique social commerce platform focused on authentic product discovery based on users' actual purchase history. The app aims to create a taste timeline for users and connect them with others who have similar preferences, moving away from traditional social media product recommendations."
        case .jade: return "Gen Z's evolving shopping habits and desire for authentic product discovery. There is a need for a platform that leverages real purchase data for personalized recommendations. There is a lot of potential of AI and data-driven insights in the e-commerce space."
        case .axy: return "The inspiration for Axy came from the realization that people often don't recognize when they're feeling anxious or stressed. Instead of simply notifying users about their stress levels, the team wanted to create a more proactive approach. They aimed to develop a solution that would help users understand their stress patterns and guide them towards healthier, more mindful stress management techniques."
        }
    }
    
    var problem: String {
        switch self {
        case .selleb: return "Existing product discovery platforms often rely on unrealistic wishlists, sponsored content, or influencer recommendations that may not reflect genuine user preferences. Selleb aims to solve this by leveraging users' real purchase data to create more authentic and personalized product recommendations."
        case .jade: return "Existing product discovery platforms often rely on unrealistic wishlists or sponsored content. Gen Z shoppers struggle to find authentic recommendations that reflect their actual preferences. Lack of seamless integration between in-store and online shopping experiences for Gen Z."
        case .axy: return "Many individuals struggle to recognize and manage their stress and anxiety levels effectively. Traditional mental health apps often lack real-time stress detection and personalized insights based on comprehensive data analysis. There's a need for a proactive solution that combines wearable data, environmental factors, and AI-driven recommendations to help users understand and manage their mental well-being."
        }
    }
    
    var implementation: [String] {
        switch self {
        case .selleb:
            return [
                "Built an iOS app with SwiftUI and Supabase backend, leveraging real-time database and authentication features.",
                "Implemented efficient image processing and product recommendation algorithms for optimal app performance.",
                "Conducted user research through surveys, interviews, and usability testing, achieving a 30% increase in user satisfaction.",
                "Employed iterative development, continuously refining the app based on user feedback and analytics.",
                "Collaborated with product teams to align user needs with development priorities, using tools like Slack, Linear, GitHub, and Figma."
            ]
        case .jade:
            return [
                "Conducted extensive market research, interviewing 150+ Gen Z shoppers, creators, brands, and industry leaders, including executives from Pinterest and Facebook, to identify key pain points in online fashion shopping",
                "Developed a user-friendly website and iOS application using React.js and Next.js, implementing server-side rendering and static site generation for enhanced performance and SEO",
                "Utilized serper.ai to scrape high-quality data from Google, ensuring a comprehensive product database and accurate trend analysis",
                "Implemented a robust project management system using tools like Nifty or Teamwork, reducing project completion times by 20% and improving team productivity through streamlined workflows and effective resource allocation,",
                "Leveraged AI and data engineering techniques to create personalized product recommendations based on users' actual purchase history and preferences",
                "Integrated features for seamless in-store and online shopping experiences, addressing Gen Z's preference for omnichannel retail"
            ]
        case .axy:
            return [
                "Developed a cross-platform mobile application using React Native, CSS/HTML, and JavaScript, ensuring compatibility with both iOS and Android devices",
                "Integrated wearable data collection from devices and Apple Fitness, capturing metrics such as muscle contraction, movement, heart rate, and location.",
                "Implemented real-time stress detection algorithms using collected biometric and environmental data",
                "Designed and built a user-friendly interface using Figma and Canva, focusing on clear visualization of stress patterns and insights",
                "Created an AI-driven recommendation system to suggest personalized relaxation techniques, exercises, and professional therapy options based on individual stress patterns"
            ]
        }
    }
}
