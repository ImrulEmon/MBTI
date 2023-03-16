// ignore_for_file: public_member_api_docs, sort_constructors_first
class Personality {
  int id;
  String title;
  String subtitle;
  String logo;
  String focus;
  String discription;

  String fameType;
  List<String> careers;
  List<String> celebrities;

  Personality({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.logo,
    required this.focus,
    required this.discription,
    required this.fameType,
    required this.careers,
    required this.celebrities,
  });
}

List<Personality> allPersonalities = [
  Personality(
    id: 1,
    title: 'ISTJ',
    subtitle: 'Logical Assimilators',
    logo: 'assets/personality-logo/ISTJ.png',
    focus: 'Use attention to detail to get the job done',
    discription:
        '''ISTJ is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ISTJ stands for Introverted, Sensing, Thinking, and Judging.
Here's a breakdown of what each letter means:
Introverted (I): ISTJs are typically reserved and introspective individuals who prefer to direct their energy inward rather than outward. They are usually quiet, calm, and deliberate in their actions and prefer to focus on their inner thoughts and feelings rather than external stimuli.
Sensing (S): ISTJs are often highly attuned to their physical surroundings and are good at remembering details and concrete facts. They tend to be pragmatic, practical, and realistic in their approach to life.
Thinking (T): ISTJs are known for their logical and analytical thinking style. They value reason and objective analysis over emotional appeals and subjective opinions. They are often good at problem-solving and decision-making.
Judging (J): ISTJs are typically organized, structured, and decisive individuals who like to plan ahead and stick to their schedules. They often have a strong sense of duty and responsibility and are committed to following through on their commitments.
Overall, ISTJs are dependable, responsible, and practical individuals who value order, stability, and tradition. They tend to be hardworking and detail-oriented, and they are often very good at following through on tasks and projects to completion. ISTJs can sometimes be seen as rigid or inflexible, but they are also known for their loyalty and reliability.
''',
    fameType: 'The Investigator/Inspector',
    careers: [
      'Management',
      'Administration',
      'Law Enforcement',
      'Accounting',
    ],
    celebrities: [
      'Queen Elizabeth II',
      'Harry Truman',
      'Evander Holyfield',
      'Jack Nicklaus',
      'Cliff Clavin (Cheers)',
    ],
  ),
  Personality(
    id: 2,
    title: 'ISTP',
    subtitle: 'Practical Analyzers',
    logo: 'assets/personality-logo/ISTP.png',
    focus: 'Work hands-on with data or things and analyze',
    discription:
        '''ISTP is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ISTP stands for Introverted, Sensing, Thinking, and Perceiving.
Here's a breakdown of what each letter means:
Introverted (I): ISTPs are typically reserved and introspective individuals who prefer to direct their energy inward rather than outward. They enjoy spending time alone and may need time to recharge after social interactions.
Sensing (S): ISTPs are often highly attuned to their physical surroundings and are good at observing and processing sensory information. They tend to be pragmatic and focused on the present moment rather than dwelling on the past or worrying about the future.
Thinking (T): ISTPs are known for their logical and analytical thinking style. They value reason and objective analysis over emotional appeals and subjective opinions. They enjoy exploring complex ideas and figuring out how things work.
Perceiving (P): ISTPs are typically flexible and adaptable individuals who like to keep their options open. They tend to be spontaneous and may prefer to make decisions on the fly rather than sticking to a rigid plan. They enjoy exploring new ideas and experiences and are often seen as adventurous.
Overall, ISTPs are practical, independent, and analytical individuals who value freedom and flexibility. They tend to be hands-on learners and enjoy tinkering with things to see how they work. ISTPs are often skilled at problem-solving and may enjoy careers in engineering, technology, or the trades. They can sometimes be seen as aloof or detached, but they are also known for their loyalty and their ability to remain calm under pressure.
''',
    fameType: 'The Athlete/Crafter',
    careers: [
      'Skilled Trade',
      'Agriculture',
      'Law Enforcement',
      'Military',
      'Technical Fields',
    ],
    celebrities: [
      'Ted Williams',
      'Bruce Lee',
      'Roger Clemens',
      'Larry Bird',
      'Michael Jordan',
      'Allen Iverson',
    ],
  ),
  Personality(
    id: 3,
    title: 'ESTP',
    subtitle: 'Logical Responders',
    logo: 'assets/personality-logo/ESTP.png',
    focus: 'Take action, work hands-on and attend to details',
    discription:
        '''ESTP is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ESTP stands for Extraverted, Sensing, Thinking, and Perceiving.
Here's a breakdown of what each letter means:
Extraverted (E): ESTPs are typically outgoing and sociable individuals who enjoy being around people. They tend to be energetic and enthusiastic, and they often thrive in social situations.
Sensing (S): ESTPs are often highly attuned to their physical surroundings and are good at observing and processing sensory information. They tend to be pragmatic and focused on the present moment rather than dwelling on the past or worrying about the future.
Thinking (T): ESTPs are known for their logical and analytical thinking style. They value reason and objective analysis over emotional appeals and subjective opinions. They enjoy exploring complex ideas and figuring out how things work.
Perceiving (P): ESTPs are typically flexible and adaptable individuals who like to keep their options open. They tend to be spontaneous and may prefer to make decisions on the fly rather than sticking to a rigid plan. They enjoy exploring new ideas and experiences and are often seen as adventurous.
Overall, ESTPs are action-oriented, adaptable, and highly resourceful individuals who thrive in high-pressure situations. They tend to be skilled problem-solvers and enjoy taking risks to achieve their goals. ESTPs often have a strong sense of competition and may enjoy careers in sales, business, or sports. They can sometimes be seen as impulsive or reckless, but they are also known for their quick thinking and their ability to think on their feet.
''',
    fameType: 'The Opportunist/Promoter',
    careers: [
      'Marketing',
      'Skilled Trades',
      'Business',
      'Law Enforcements',
    ],
    celebrities: [
      'Ernest Hemingway',
      'Lucille Ball',
      'Pedro Martinez',
      'Eddie Murphy',
      'Madonna',
      'Donald Trump',
    ],
  ),
  Personality(
    id: 4,
    title: 'ESTJ',
    subtitle: 'Practical Expeditors',
    logo: 'assets/personality-logo/ESTJ.png',
    focus: 'Use logic and organization of the facts to get tasks done',
    discription:
        '''ESTJ is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ESTJ stands for Extraverted, Sensing, Thinking, and Judging.
Here's a breakdown of what each letter means:
Extraverted (E): ESTJs are typically outgoing and sociable individuals who enjoy being around people. They tend to be assertive and confident, and they often thrive in social situations.
Sensing (S): ESTJs are often highly attuned to their physical surroundings and are good at observing and processing sensory information. They tend to be pragmatic and focused on the present moment rather than dwelling on the past or worrying about the future.
Thinking (T): ESTJs are known for their logical and analytical thinking style. They value reason and objective analysis over emotional appeals and subjective opinions. They enjoy exploring complex ideas and figuring out how things work.
Judging (J): ESTJs are typically organized, structured, and decisive individuals who like to plan ahead and stick to their schedules. They often have a strong sense of duty and responsibility and are committed to following through on their commitments.
Overall, ESTJs are practical, efficient, and highly organized individuals who value order and structure. They tend to be hardworking and detail-oriented, and they are often very good at following through on tasks and projects to completion. ESTJs can sometimes be seen as inflexible or rigid, but they are also known for their loyalty and their ability to lead and manage others effectively. ESTJs may enjoy careers in management, administration, or law enforcement, where their strengths in planning and organization can be put to good use.
''',
    fameType: 'The Supervisor',
    careers: [
      'Management',
      'Administration',
      'Law Enforcement',
    ],
    celebrities: [
      'George W. Bush',
      'Nolan Ryan',
      'Judge Judy',
      'Dr. Laura Schlesinger',
      'Lucy (Peanuts character)',
    ],
  ),
  Personality(
    id: 5,
    title: 'ISFJ',
    subtitle: 'Compassionate Assimilators',
    logo: 'assets/personality-logo/ISFJ.png',
    focus: 'Personally help people behind the senses',
    discription:
        '''ISFJ is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ISFJ stands for Introverted, Sensing, Feeling, and Judging.
Here's a breakdown of what each letter means:
Introverted (I): ISFJs are typically reserved and introspective individuals who prefer to direct their energy inward rather than outward. They enjoy spending time alone and may need time to recharge after social interactions.
Sensing (S): ISFJs are often highly attuned to their physical surroundings and are good at observing and processing sensory information. They tend to be practical and detail-oriented, focusing on concrete facts and details rather than abstract ideas.
Feeling (F): ISFJs are known for their warm and empathetic nature. They tend to be highly attuned to the emotions of others and often prioritize the needs of others over their own needs. They tend to be kind, compassionate, and nurturing individuals.
Judging (J): ISFJs are typically organized, structured, and decisive individuals who like to plan ahead and stick to their schedules. They often have a strong sense of duty and responsibility and are committed to following through on their commitments.
Overall, ISFJs are caring, responsible, and dependable individuals who value stability and security. They tend to be loyal and dedicated to their families, friends, and colleagues, and they often take on caregiving roles in their personal and professional lives. ISFJs can sometimes struggle with asserting their own needs and may need to work on setting boundaries and prioritizing their own self-care. ISFJs may enjoy careers in healthcare, education, or social services, where their strengths in nurturing and supporting others can be put to good use.
''',
    fameType: 'The Assistant/Protector',
    careers: [
      'Education',
      'Health Care',
      'Religious Settings',
    ],
    celebrities: [
      'Louisa May Alcott',
      'David Copperfield Ophelia (Hamlet)',
      'Johnny Carson',
      'Jerry Seinfeld',
      'Captain America',
    ],
  ),
  Personality(
    id: 6,
    title: 'ISFP',
    subtitle: 'Practical Enhancers',
    logo: 'assets/personality-logo/ISFP.png',
    focus:
        'Use gentle nature and attention to detail in service-related positions',
    discription:
        '''ISFP is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ISFP stands for Introverted, Sensing, Feeling, and Perceiving.
Here's a breakdown of what each letter means:
Introverted (I): ISFPs are typically reserved and introspective individuals who prefer to direct their energy inward rather than outward. They enjoy spending time alone and may need time to recharge after social interactions.
Sensing (S): ISFPs are often highly attuned to their physical surroundings and are good at observing and processing sensory information. They tend to be practical and detail-oriented, focusing on concrete facts and details rather than abstract ideas.
Feeling (F): ISFPs are known for their warm and empathetic nature. They tend to be highly attuned to the emotions of others and often prioritize the needs of others over their own needs. They tend to be kind, compassionate, and nurturing individuals.
Perceiving (P): ISFPs are typically flexible and adaptable individuals who like to keep their options open. They tend to be spontaneous and may prefer to make decisions on the fly rather than sticking to a rigid plan. They enjoy exploring new ideas and experiences and are often seen as artistic and creative.
Overall, ISFPs are sensitive, compassionate, and artistic individuals who value their own personal values and inner experiences. They tend to be deeply in touch with their emotions and those of others, and may enjoy artistic pursuits such as painting, music, or writing. ISFPs can sometimes struggle with decision-making, as they may be easily distracted by new experiences and ideas. They may benefit from setting clear goals and priorities to help them stay focused. ISFPs may enjoy careers in the arts, counseling, or other helping professions, where their strengths in creativity and empathy can be put to good use.
''',
    fameType: 'The Artisan/Composer',
    careers: [
      'Health Care',
      'Business',
      'Law Enforcement',
    ],
    celebrities: [
      'Mozart',
      'Neil Simon',
      'Paul McCartney',
      'Paul Pierce',
      'Brooke Shields',
    ],
  ),
  Personality(
    id: 7,
    title: 'ESFP',
    subtitle: 'Compassionate Responders',
    logo: 'assets/personality-logo/ESFP.png',
    focus: 'Use outgoing nature and enthusiasm with practical needs',
    discription:
        '''ESFP is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ESFP stands for Extraverted, Sensing, Feeling, and Perceiving.
Here's a breakdown of what each letter means:
Extraverted (E): ESFPs are typically outgoing and sociable individuals who enjoy being around people. They tend to be assertive and confident, and they often thrive in social situations.
Sensing (S): ESFPs are often highly attuned to their physical surroundings and are good at observing and processing sensory information. They tend to be practical and focused on the present moment rather than dwelling on the past or worrying about the future.
Feeling (F): ESFPs are known for their warm and empathetic nature. They tend to be highly attuned to the emotions of others and often prioritize the needs of others over their own needs. They tend to be kind, compassionate, and nurturing individuals.
Perceiving (P): ESFPs are typically flexible and adaptable individuals who like to keep their options open. They tend to be spontaneous and may prefer to make decisions on the fly rather than sticking to a rigid plan. They enjoy exploring new ideas and experiences and are often seen as adventurous and fun-loving.
Overall, ESFPs are energetic, outgoing, and spontaneous individuals who value social connections and new experiences. They tend to be highly attuned to their emotions and those of others, and may enjoy social activities such as parties or other gatherings. ESFPs can sometimes struggle with planning and may need to work on developing a more structured approach to their lives. They may benefit from setting clear goals and priorities to help them stay focused. ESFPs may enjoy careers in the arts, entertainment, or other fields that allow them to be creative and interact with others.
''',
    fameType: 'The Entertainer/Performer',
    careers: [
      'Health Care',
      'Teaching',
      'Child Care',
      'Skilled Trades',
    ],
    celebrities: [
      'Bob Hope',
      'Goldie Hawn',
      'Kyle Petty',
      'Magic Johnson',
      'Charles Barkley',
      'Bill Clinton',
    ],
  ),
  Personality(
    id: 8,
    title: 'ESFJ',
    subtitle: 'Practical Contributors',
    logo: 'assets/personality-logo/ESFJ.png',
    focus: 'Use their personal concern to provide service to others',
    discription:
        '''ESFJ is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ESFJ stands for Extraverted, Sensing, Feeling, and Judging.
Here's a breakdown of what each letter means:
Extraverted (E): ESFJs are typically outgoing and sociable individuals who enjoy being around people. They tend to be assertive and confident in social situations and enjoy being the center of attention.
Sensing (S): ESFJs are often highly attuned to their physical surroundings and are good at observing and processing sensory information. They tend to be practical and focused on the present moment, using their five senses to gather information.
Feeling (F): ESFJs are known for their warmth and empathy towards others. They tend to be highly attuned to the emotions of others and may put the needs of others before their own. They are often seen as nurturing and caring individuals.
Judging (J): ESFJs tend to be organized, structured, and focused on planning. They prefer to have a clear plan of action and are often motivated by achieving specific goals.
Overall, ESFJs are warm, friendly, and empathetic individuals who value social connections and harmony. They tend to be highly attuned to the needs of others and may excel in careers that involve helping others, such as teaching or healthcare. ESFJs can sometimes struggle with change and may prefer to stick to familiar routines and traditions. They may benefit from learning to be more open-minded and adaptable to new experiences.
''',
    fameType: 'The Facilitator/Provider',
    careers: [
      'Education',
      'Health Care',
      'Religion',
    ],
    celebrities: [
      'George Washington',
      'Barbara Walters',
      'Terry Bradshaw',
      'Mary Tyler Moore',
      'Sally Field',
      'Monica (Friends)',
    ],
  ),
  Personality(
    id: 9,
    title: 'INFJ',
    subtitle: 'Compassionate Visionaries',
    logo: 'assets/personality-logo/INFJ.png',
    focus:
        'Facilitate other\'s emotional, intellectual or spritual development',
    discription:
        '''INFJ is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. INFJ stands for Introverted, Intuitive, Feeling, and Judging.
Here's a breakdown of what each letter means:
Introverted (I): INFJs tend to be quiet and reserved individuals who prefer to spend time alone or with a small group of close friends. They may need time alone to recharge their batteries and process their thoughts and emotions.
Intuitive (N): INFJs tend to be highly intuitive individuals who are good at seeing patterns and connections between seemingly unrelated things. They often have a deep understanding of other people's emotions and motivations, and may be highly empathetic.
Feeling (F): INFJs are known for their warmth and empathy towards others. They tend to be highly attuned to the emotions of others and may put the needs of others before their own. They are often seen as caring and compassionate individuals.
Judging (J): INFJs tend to be organized and focused on planning. They prefer to have a clear plan of action and may be highly motivated by achieving specific goals. They are often highly conscientious and value integrity and responsibility.
Overall, INFJs are deep, introspective individuals who value authenticity and connection with others. They tend to be highly empathetic and may excel in careers that involve helping others, such as counseling or social work. INFJs can sometimes struggle with feeling overwhelmed by their emotions or taking on too much responsibility. They may benefit from learning to set healthy boundaries and practicing self-care. Despite their quiet demeanor, INFJs can be highly effective leaders due to their ability to inspire others and their focus on achieving their goals.
''',
    fameType: 'The Wordsmith/Counselor',
    careers: [
      'Religion',
      'Counsiling',
      'Teaching',
      'Arts',
    ],
    celebrities: [
      'Aristophanes',
      'Mohandas Gandhi',
      'Eleanor Roosevelt',
      'Michael Landon',
      'Queen Noor',
    ],
  ),
  Personality(
    id: 10,
    title: 'INFP',
    subtitle: 'Insightful Enhanchcers',
    logo: 'assets/personality-logo/INFP.png',
    focus: 'Use creativity to honor or support their values',
    discription:
        '''INFP is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. INFP stands for Introverted, Intuitive, Feeling, and Perceiving.
Here's a breakdown of what each letter means:
Introverted (I): INFPs tend to be introspective and reflective individuals who prefer to spend time alone or with a few close friends. They may need time alone to recharge and process their thoughts and emotions.
Intuitive (N): INFPs tend to be highly intuitive individuals who are good at seeing patterns and connections between seemingly unrelated things. They often have a rich inner world and may be drawn to art, literature, or other creative pursuits.
Feeling (F): INFPs are known for their empathy and compassion towards others. They tend to be highly attuned to the emotions of others and may prioritize the needs of others over their own. They are often seen as kind and sensitive individuals.
Perceiving (P): INFPs tend to be open-minded and flexible, preferring to keep their options open rather than making firm plans. They may enjoy exploring new ideas or experiences and can be spontaneous and adventurous.
Overall, INFPs are idealistic and imaginative individuals who value authenticity and personal growth. They tend to be creative and may excel in careers that allow them to express themselves, such as writing or art. INFPs can sometimes struggle with feelings of insecurity or self-doubt, and may benefit from building their self-confidence and seeking out meaningful connections with others. Despite their introspective nature, INFPs can be passionate advocates for causes they believe in and can be effective leaders when they feel strongly about a particular issue.
''',
    fameType: 'The Idealist/Healer',
    careers: [
      'Counseling',
      'Writing',
      'Arts',
    ],
    celebrities: [
      'Helen Keller',
      'Fred Rogers (Mister Rogers)',
      'James Taylor',
      'Amy Tan',
      'Calvin (Calvin and Hobbes)',
    ],
  ),
  Personality(
    id: 11,
    title: 'ENFP',
    subtitle: 'Compassioate Explorers',
    logo: 'assets/personality-logo/ENFP.png',
    focus: 'Use creativity and communication to foster growth in others',
    discription:
        '''ENFP is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ENFP stands for Extraverted, Intuitive, Feeling, and Perceiving.
Here's a breakdown of what each letter means:
Extraverted (E): ENFPs tend to be outgoing and sociable individuals who enjoy being around people. They are often expressive and enjoy sharing their ideas and emotions with others.
Intuitive (N): ENFPs tend to be highly intuitive individuals who are good at seeing patterns and connections between seemingly unrelated things. They often have a rich inner world and may be drawn to art, literature, or other creative pursuits.
Feeling (F): ENFPs are known for their warmth and empathy towards others. They tend to be highly attuned to the emotions of others and may prioritize the needs of others over their own. They are often seen as kind and compassionate individuals.
Perceiving (P): ENFPs tend to be open-minded and flexible, preferring to keep their options open rather than making firm plans. They may enjoy exploring new ideas or experiences and can be spontaneous and adventurous.
Overall, ENFPs are enthusiastic and imaginative individuals who value creativity and authenticity. They tend to be passionate about their beliefs and may excel in careers that allow them to express themselves, such as writing or art. ENFPs can sometimes struggle with follow-through or getting bogged down in details, and may benefit from building strong systems and routines to help them stay organized. Despite their outgoing nature, ENFPs can also be deeply introspective and may spend time reflecting on their thoughts and emotions.
''',
    fameType: 'The Motivator/Champion',
    careers: [
      'Counseling',
      'Teaching',
      'Religion',
      'Arts',
    ],
    celebrities: [
      'Dave Thomas (Wendy\'s)',
      'Meg Ryan',
      'Regis Philbin',
      'Dr. Doug Ross (ER)',
      'Ariel (The Little Mermaid)',
    ],
  ),
  Personality(
    id: 12,
    title: 'ENFJ',
    subtitle: 'Insightful Contributors',
    logo: 'assets/personality-logo/ENFJ.png',
    focus: 'Help others with their emotional, intellectual and spritual growth',
    discription:
        '''ENFJ is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ENFJ stands for Extraverted, Intuitive, Feeling, and Judging.
Here's a breakdown of what each letter means:
Extraverted (E): ENFJs tend to be outgoing and sociable individuals who enjoy being around people. They are often expressive and enjoy sharing their ideas and emotions with others.
Intuitive (N): ENFJs tend to be highly intuitive individuals who are good at seeing patterns and connections between seemingly unrelated things. They often have a rich inner world and may be drawn to art, literature, or other creative pursuits.
Feeling (F): ENFJs are known for their warmth and empathy towards others. They tend to be highly attuned to the emotions of others and may prioritize the needs of others over their own. They are often seen as kind and compassionate individuals.
Judging (J): ENFJs tend to be organized and goal-oriented individuals who enjoy planning and following through on their plans. They may be drawn to leadership roles and may be skilled at motivating and inspiring others.
Overall, ENFJs are charismatic and empathetic individuals who value harmony and connection with others. They tend to be natural leaders who are good at inspiring others and bringing people together towards a common goal. ENFJs may excel in careers that allow them to help others, such as counseling or social work, and may be drawn to creative pursuits or careers that allow them to express themselves. Despite their outgoing nature, ENFJs can also be deeply reflective and may spend time processing their thoughts and emotions.
''',
    fameType: 'The Educator/Teacher',
    careers: [
      'Religion',
      'Arts',
      'Teaching',
    ],
    celebrities: [
      'Diane Sawyer',
      'Oprah Winfrey',
      'Martin Luther King, Jr.',
      'Lauren Graham (Gilmore Girls)',
      'Ben Affleck',
    ],
  ),
  Personality(
    id: 13,
    title: 'INTJ',
    subtitle: 'Logical Visionaries',
    logo: 'assets/personality-logo/INTJ.png',
    focus:
        'Use intellectual creativity and technicla knowledge to conceptulize analyze and get tasks done',
    discription:
        '''INTJ is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. INTJ stands for Introverted, Intuitive, Thinking, and Judging.
Here's a breakdown of what each letter means:
Introverted (I): INTJs tend to be introspective and prefer to spend time alone or in small groups rather than large social settings. They may enjoy reflecting on their thoughts and ideas and may need time alone to recharge.
Intuitive (N): INTJs tend to be highly intuitive individuals who are good at seeing patterns and connections between seemingly unrelated things. They often have a rich inner world and may be drawn to philosophy or other abstract concepts.
Thinking (T): INTJs are known for their analytical and logical thinking skills. They tend to be objective and rational in their decision-making and may prioritize data and facts over emotions.
Judging (J): INTJs tend to be organized and goal-oriented individuals who enjoy planning and following through on their plans. They may be drawn to leadership roles and may be skilled at developing strategies to achieve their goals.
Overall, INTJs are strategic and analytical individuals who value knowledge and expertise. They tend to be independent thinkers who enjoy developing new ideas and may excel in careers that allow them to use their problem-solving skills, such as engineering or science. INTJs can sometimes be perceived as aloof or unemotional, and may benefit from working on their communication skills to better connect with others. Despite their introverted nature, INTJs can be highly ambitious and may enjoy pursuing their goals with a sense of purpose and determination.
''',
    fameType: 'The Inventor/Mastermind',
    careers: [
      'Scientific Field',
      'Technical Field',
      'Computers',
      'Law',
    ],
    celebrities: [
      'Ulysses S. Grant',
      'Arnold Schwarzenegger Rudy Giuliani',
      'Donald Rumsfeld',
      'General Colin Powell',
    ],
  ),
  Personality(
    id: 14,
    title: 'INTP',
    subtitle: 'Insightful Analyzers',
    logo: 'assets/personality-logo/INTP.png',
    focus:
        'Apply objective analysis of problems and technical expertise in solitary environment',
    discription:
        '''INTP is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. INTP stands for Introverted, Intuitive, Thinking, and Perceiving.
Here's a breakdown of what each letter means:
Introverted (I): INTPs tend to be introspective and prefer to spend time alone or in small groups rather than large social settings. They may enjoy reflecting on their thoughts and ideas and may need time alone to recharge.
Intuitive (N): INTPs tend to be highly intuitive individuals who are good at seeing patterns and connections between seemingly unrelated things. They often have a rich inner world and may be drawn to philosophy or other abstract concepts.
Thinking (T): INTPs are known for their analytical and logical thinking skills. They tend to be objective and rational in their decision-making and may prioritize data and facts over emotions.
Perceiving (P): INTPs tend to be flexible and adaptable individuals who enjoy exploring new ideas and possibilities. They may be open-minded and curious, and enjoy exploring new concepts or ways of thinking.
Overall, INTPs are curious and analytical individuals who value knowledge and expertise. They tend to be independent thinkers who enjoy exploring new ideas and may excel in careers that allow them to use their problem-solving skills, such as science or technology. INTPs can sometimes struggle with social interactions, and may benefit from working on their communication skills to better connect with others. Despite their introverted nature, INTPs can be highly creative and may enjoy pursuing their interests in a variety of ways.
''',
    fameType: 'The Logician/Architect',
    careers: [
      'Scientific Field',
      'Technical Field',
    ],
    celebrities: [
      'Socrates',
      'Charles Darwin',
      'Albert Einstein',
      'Mikhail Baryshnikov',
      'Nelson Mandela',
      'Steven Spielberg',
    ],
  ),
  Personality(
    id: 15,
    title: 'ENTP',
    subtitle: 'Logical Explorers',
    logo: 'assets/personality-logo/ENTP.png',
    focus: 'Continuously take on new challanges and solve problems',
    discription:
        '''ENTP is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ENTP stands for Extraverted, Intuitive, Thinking, and Perceiving.
Here's a breakdown of what each letter means:
Extraverted (E): ENTPs tend to be outgoing and sociable individuals who enjoy interacting with others. They may enjoy being the center of attention and may have a natural ability to connect with people.
Intuitive (N): ENTPs tend to be highly intuitive individuals who are good at seeing patterns and connections between seemingly unrelated things. They often have a rich inner world and may be drawn to philosophy or other abstract concepts.
Thinking (T): ENTPs are known for their analytical and logical thinking skills. They tend to be objective and rational in their decision-making and may prioritize data and facts over emotions.
Perceiving (P): ENTPs tend to be flexible and adaptable individuals who enjoy exploring new ideas and possibilities. They may be open-minded and curious, and enjoy exploring new concepts or ways of thinking.
Overall, ENTPs are enthusiastic and creative individuals who value innovation and new ideas. They tend to be independent thinkers who enjoy exploring new possibilities and may excel in careers that allow them to use their problem-solving skills, such as entrepreneurship or creative fields. ENTPs can sometimes struggle with follow-through or completing projects, and may benefit from working on their organization and time-management skills. Despite their extraverted nature, ENTPs can also enjoy time alone to reflect and explore their own ideas.
''',
    fameType: 'The Strategizer/Inventor)',
    careers: [
      'Science',
      'Management',
      'Technilogy',
      'Arts',
    ],
    celebrities: [
      'Benjamin Franklin',
      'Walt Disney',
      'Red Auerbach',
      'Vin Baker',
      'Bugs Bunny',
    ],
  ),
  Personality(
    id: 16,
    title: 'ENTJ',
    subtitle: 'Insightful Expeditors',
    logo: 'assets/personality-logo/ENTJ.png',
    focus:
        'Use analsis, strategic-planning and organization to get tasks completed',
    discription:
        '''ENTJ is one of the 16 personality types in the Myers-Briggs Type Indicator (MBTI), which is a popular personality assessment tool based on Carl Jung's theory of psychological types. ENTJ stands for Extraverted, Intuitive, Thinking, and Judging.
Here's a breakdown of what each letter means:
Extraverted (E): ENTJs tend to be outgoing and assertive individuals who enjoy interacting with others. They may enjoy being in leadership positions and may have a natural ability to influence and persuade others.
Intuitive (N): ENTJs tend to be highly intuitive individuals who are good at seeing patterns and connections between seemingly unrelated things. They often have a big-picture perspective and may be drawn to strategy or long-term planning.
Thinking (T): ENTJs are known for their analytical and logical thinking skills. They tend to be objective and rational in their decision-making and may prioritize data and facts over emotions.
Judging (J): ENTJs tend to be decisive and organized individuals who prefer structure and order. They may be goal-oriented and enjoy planning and executing strategies to achieve their objectives.
Overall, ENTJs are confident and driven individuals who value efficiency and productivity. They tend to be natural leaders who excel in positions of authority and may be drawn to careers in management, business, or politics. ENTJs can sometimes come across as intimidating or overly assertive, and may benefit from working on their interpersonal skills to better connect with others. Despite their extraverted nature, ENTJs can also enjoy alone time to reflect on their goals and strategies.
''',
    fameType: 'The CEO/Field Marshal',
    careers: [
      'Management',
      'Leadership',
    ],
    celebrities: [
      'Napoleon Bonaparte ',
      'Richard M. Nixon ',
      'Sigourney Weaver',
      'Margaret Thatcher',
      'Alan Greenspan',
    ],
  ),
];
