//
//  TopMoviesList.swift
//  Novies
//
//  Created by יואב אליאב on 10/03/2024.
//

import Foundation


// this struct is only for debug, not really have usage currently

struct TopMvoiesList{
    
    
    
    //MARK: - top movies
    static var bestMvoies : [String] = [
    "The Godfather", //1
    "The Shawshank Redemption", //2
    "The Dark Knight", //3
    "Pulp Fiction", //4
    "Forrest Gump", //5
    "Fight Club", // 6
    "Inception", //7
    "GoodFellas", // 8
    "City of God", //9
    "The Wolf of Wall Street", // 10
    "Parasite", // 11
    "Barry Lyndon", //12
    "Interstellar", //13
    "Once Upon a Time in America", //14
    "The Green Mile", //15
    "The Big Lebowski", // 16
    "Spider-Man: Into the Spider-Verse", //17
    "American History X", // 18
    "Casino", // 19
    "12 Angry Men", // 20
    "Soul", // 21
    "The Godfather Part II", // 22
    "Spider-Man: Across the Spider-Verse", // 23
    "The Truman Show", // 24
    "Mary and Max", // 25
    "The Hunt", // 26
    "The Matrix", // 27
    "Léon: The Professional", // 28
    "Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb", // 29
    "A Silent Voice: The Movie", // 30
    "Alien", // 31
    "Back to the Future", // 32
    "Arrival", //33
    "The Dark Knight Rises", //34
    "Capernaum", // 35
    "A Separation", // 36
    "Groundhog Day", // 37
    "Blade Runner", // 38
    "Blade Runner 2049", // 39
    "Trainspotting", //40
    "Oldboy", // 41
    "Kill Bill: Vol. 1", // 42
    "South Park: Bigger, Longer & Uncut", // 43
    "Die Hard", // 44
    "Saving Private Ryan", //45
    "Life Is Beautiful", // 46
    "Schindler's List", // 47
    "Gladiator", // 48
    "Finding Nemo", //49
    "Superbad", //50
    "The Inbetweeners", // 51
    
    
    
    
    ]
    
    static var bestDramaMovies = [
        "Forrest Gump",
        "City of God",
        "American History X",
        "The Shawshank Redemption",
        "The Godfather",
        "Pulp Fiction",
        "Fight Club",
        "GoodFellas",
        "City of God",
        "Parasite",
        "12 Angry Men",
        "The Godfather Part II",
        "Trainspotting",
        "The Green Mile",
        "Saving Private Ryan",
        "Life Is Beautiful",
        "Schindler's List",
        "Gladiator"
        
        
        
        
        
    
    ]
    
    static var bestActionMovies = [
        "Inception",
        "The Dark Knight",
        "Léon: The Professional",
        "Kill Bill: Vol. 1",
        "Oldboy",
        "The Dark Knight Rises",
        "Die Hard"
    ]
    
    static var bestComedyMovies = [
    "The Big Lebowski",
    "The Wolf of Wall Street",
    "The Truman Show",
    "Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb",
    "Groundhog Day",
    "Superbad",
    "The Inbetweeners"
    
    
    ]
    
    static var bestSciFiMovies = [
        "Inception",
        "Interstellar",
        "The Matrix",
        "Alien",
        "Back to the Future",
        "Arrival",
        "Blade Runner",
        "Blade Runner 2049",
        
    ]
    
    static var bestAnimationMovies = [
        "Spider-Man: Into the Spider-Verse",
        "Soul",
        "Spider-Man: Across the Spider-Verse",
        "Mary and Max",
        "A Silent Voice: The Movie",
        "South Park: Bigger, Longer & Uncut",
        "Finding Nemo"
        
        
        
        
        ]
    
    static var bestUnratedMovies = [
        "Barry Lyndon",
        "Once Upon a Time in America",
        "The Hunt",
        "Capernaum",
        "A Separation",
        
        ]
    
    
    
    static var genre2movies = [
        "Drama" : bestDramaMovies,
        "Action" : bestActionMovies,
        "Comedy" : bestComedyMovies,
        "Sci-Fi" : bestSciFiMovies,
        "Animation" : bestAnimationMovies,
        "Underrated Movies" : bestUnratedMovies
    ]
    
    
    
    
    
    //MARK: - movies notes
    
    
    static var movies2TitleNotes : [String : String] = [
        "The Godfather" : "A Path Chosen or Given?", // 1
        "The Shawshank Redemption" : "Friendship", // 2
        "The Dark Knight" : "Duality", // 3
        "Pulp Fiction" : "Chaos of Life", // 4
        "Forrest Gump" : "Box of Chocolates", // 5
        "Fight Club" : "Identity and Liberation", // 6
        "Inception" : "Dreams vs. Reality", // 7
        "GoodFellas" : "True Friends", // 8
        "City of God" : "Wrong Place", // 9
        "The Wolf of Wall Street" : "Upside Down", // 10
        "Parasite" : "Upper Class Never Understand", // 11
        "Barry Lyndon" : "A Good Deed Does Not Repay the Debt", // 12
        "Interstellar" : "Simple Paradox", // 13
        "Once Upon a Time in America" : "Zero Sum Game", // 14
        "The Green Mile" : "Appearance", // 15
        "The Big Lebowski" : "Take It Easy", // 16
        "Spider-Man: Into the Spider-Verse" : "Our Control", // 17
        "American History X" : "Individuals", // 18
        "Casino" : "Love", // 19
        "12 Angry Men" : "Always Ask", // 20
        "Soul" : "Life Is Simple", // 21
        "The Godfather Part II" : "Betrayal", // 22
        "Spider-Man: Across the Spider-Verse" : "You Choose", //23
        "The Truman Show" : "Reality Show", // 24
        "Mary and Max" : "Imperfect",
        "The Hunt" : "Outburst of Anger",
        "The Matrix" : "Reality or Illusion?",
        "Léon: The Professional" : "Unlikely Mentors",
        "Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb" : "The Absurdity of Conflict",
        "A Silent Voice: The Movie" : "Reflections",
        "Alien" : "Unknown Horrors",
        "Back to the Future" : "Altering Fate",
        "Arrival" : "The Power of Language",
        "The Dark Knight Rises" : "Rising Hope",
        "Capernaum" : "Lost Innocence",
        
        "A Separation" : "Ripple Effects",
        
        "Groundhog Day" : "Destined Affections",
        
        "Blade Runner" : "Beyond Creation",
        
        "Blade Runner 2049" : "Coexistence",
        
        "Trainspotting" : "Perspectives of Despair",
        
        "Oldboy" : "Fateful Bonds",
        
        "Kill Bill: Vol. 1" : "The Taste of Revenge",
        
        "South Park: Bigger, Longer & Uncut" : "Heavenly Exceptions",
        
        "Die Hard" : "Survival's Recipe",
        
        "Saving Private Ryan" : "Sacrifice and Duty",
        
        "Life Is Beautiful" : "The Power of Love",
        
        "Schindler's List" : "Beacon in the Darkness",
        
        "Gladiator" : "Final Reunion",
        
        "Shutter Island" : "Masks of Virtue",
        
        "Finding Nemo" : "The Lessons of Independence",
        
        "Superbad" : "The Legend of McLovin",
        
        "The Inbetweeners," : "Out of Your League"
    
    ]
    
    
    static var movies2Notes : [String : String] = [
        "The Godfather" : "It's interesting does we choose our path in life, or we burn into the path", //1
        
        "The Shawshank Redemption" : "In our dark times, our friends can help us to overcome the obstacles", // 2
        
        "The Dark Knight" : "The line between heroism and villainy is thinner than we think, challenging our perceptions of justice and morality.", //3
        
        "Pulp Fiction" : "Life's random and interconnected moments can lead to unexpected consequences, teaching us about fate and choice.", //4
        
        "Forrest Gump" : "Life is like a box of chocolates. You never know what you're gonna get.", //5
        
        "Fight Club" : "Our search for identity and meaning can drive us to extremes, revealing the thin veneer of societal expectations and self-imposed limitations.", //6
        
        "Inception" : "The boundary between dreams and reality is fragile and easily blurred, questioning our perception of existence and the power of the mind.", //7
        
        "GoodFellas" : "Hard times will always reveal true friends, especially if hard times mean you have a high chance of being killed or sent to a life sentence.", //8
        
        "City of God" : "Just think how many people can't realize their potential just because of the place they were born.", //9
        
        "The Wolf of Wall Street" : "Sometimes the devil helps us to get up, just so he can throw us from the highest point.", // 10
        
        "Parasite" : "The upper class will never understand the lower class.", // 11
        
        "Barry Lyndon" : "When you lose yourself, there is a chance you'll end up without a leg.", // 12
        
        "Interstellar" : "Perhaps paradox does not cause contradiction but understanding.",// 13
        
        "Once Upon a Time in America" : "Friendship is not a zero-sum game; we can betray our friends but still love them.", // 14
        
        "The Green Mile" : "It's sad that in our world, our appearance can affect how we will be treated.", // 15
        
        "The Big Lebowski" : "We probably all need to take life more easy like the Dude.", // 16
        
        "Spider-Man: Into the Spider-Verse" : "We might not have the potential or the maturity, but we always can.", // 17
        
        "American History X" : "Only on the day we learn to look at people as individuals, and not as a group, will we be able to defeat racism.", // 18
        
        "Casino" : "No matter how smart you are, love overrides rationality.", // 19
        
        "12 Angry Men" : "Always ask, Always challenge your conception.", // 20
        
        "Soul" : "If we cannot enjoy the simple things, how can we enjoy the complex ones?", // 21
        
        "The Godfather Part II" : "Vito and even Sonny would never have killed Fredo.",
        
        "Spider-Man: Across the Spider-Verse" : "Our destiny can't be ours if we let others decide it.",
        
        "The Truman Show" : "If you think about it, we all live in a reality show, trying our best to be popular in the eyes of society.",
        
        "Mary and Max" : "All humans are imperfect; we can't choose our warts, but we can choose our friends.",
        
        "The Hunt" : "The line between justice and injustice can be very blur.",
        
        "The Matrix" : "Is the truth always preferable to illusion?",
        
        "Léon: The Professional" : "Sometimes, guidance comes from the most unexpected places.",
        
        "Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb" : "The lengths to which we go, often to our own detriment, in the name of winning.",
        
        "A Silent Voice: The Movie" : "Life teaches us lessons in hindsight, revealing our past naivety and the paths to redemption.",
        
        "Alien" : "In the vast silence of space, the true terror lies in what awaits us in the unknown.",
        
        "Back to the Future" : "Would you alter your past if given the chance, knowing it might irrevocably change who you are?",
        
        "Arrival" : "Language molds our reality, shaping how we perceive the world and connect with others." ,
        
        "The Dark Knight Rises" : "In the darkest of times, hope is not a burden but a powerful force that motivates us to stand again.",
        
        "Capernaum" : "In a world stripped of hope, nurturing our children's dreams becomes our greatest responsibility.",
        
        "A Separation" : "Every decision we make sets off a chain of consequences, shaping our lives and those around us.",
        
        "Groundhog Day" : "What seems like fate may be happenstance, yet love finds a way to seem predestined.",
        
        "Blade Runner" : "As AI challenges the boundaries of human capability, we must confront the question: Can the creation surpass its creator?",
        
        "Blade Runner 2049" : "Exploring the fragile line between AI and humanity, questioning whether harmony or conflict defines our shared future.",
        
        "Trainspotting" : "What we perceive as our lowest points may be peaks for others; perspective shapes our understanding of despair and hope",
        
        "Oldboy" : "Bound by the chains of fate, the quest for liberation becomes our most fervent struggle.",
        
        "Kill Bill: Vol. 1" : "Revenge carries a sweetness tinged with bitterness, a quest that questions the cost of satisfaction.",
        
        "South Park: Bigger, Longer & Uncut" : "In a world where chaos reigns and the line between right and wrong blurs, Kenny's innocence shines—a beacon reminding us that not all heroes wear capes, some earn their wings.",
        
        
        "Die Hard" : "In the face of overwhelming odds, it's not just skill but also a dash of luck that can turn the ordinary into the extraordinary, proving that sometimes, that's all you need to survive.",
        
        
        "Saving Private Ryan" : "The profound sacrifice of many for the life of one underscores the deepest values of duty, honor, and the human spirit.",
        
        
        "Life Is Beautiful" : "In the darkest times, love empowers us to create moments of beauty and joy, shielding our loved ones from the harshness of reality.",
    
        "Schindler's List" : "Surrounded by inhumanity, one can either succumb to the darkness or choose to be a light, proving that amidst the worst of monsters, humanity can still prevail.",
        
        "Gladiator" : "In the face of mortality, the greatest solace lies in the hope of reuniting with our lost loved ones, a testament to the enduring power of love beyond life.",
        
        "Shutter Island" : "In a world where the lines between good and evil blur, true character is revealed not by the masks we wear but by the actions we undertake.",
        
        
        "Finding Nemo" : "While we strive to protect those we love, teaching them to navigate the world on their own is the ultimate act of care, preparing them for life's unpredictable currents.",
        
        "Superbad" : "McLovin: a name that teeters between absurdity and legend. Could someone so improbably named be the unlikely hero humanity needs? Belief is the key.",
        
        "The Inbetweeners" : "Aim for someone out of your league. Best case, you score a miracle."
    ]
    
    
    
    
    
    
    
    
}
