# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
  [ "Admin", "admin@gmail.com", "Qwedsa123", "Qwedsa123" ],
  [ "Moderator", "moderator@gmail.com", "Qwedsa123", "Qwedsa123" ],
  [ "Dawid24", "dawid@gmail.com", "Qwedsa123", "Qwedsa123"],
  [ "Rafal_ik", "rafal@gmail.com", "Qwedsa123", "Qwedsa123"],
  [ "Julcia23", "julia@gmail.com", "Qwedsa123", "Qwedsa123"],
  [ "Sara_tkaczyk", "sara@gmail.com", "Qwedsa123", "Qwedsa123"],
  [ "Kamil", "kamil@gmail.com", "Qwedsa123", "Qwedsa123"],
  [ "Zezzo", "zezzo@gmail.com", "Qwedsa123", "Qwedsa123"],
  [ "Animplex", "animplex@gmail.com", "Qwedsa123", "Qwedsa123"],
  [ "Zosia_86", "zosia@gmail.com", "Qwedsa123", "Qwedsa123"],
]

user_list.each do |username, email, pass, confirm|
  User.create( username: username, email: email, password: pass, password_confirmation: confirm)
end

admin = User.find(1)
admin.add_role :admin
moderator = User.find(2)
moderator.add_role :moderator

channel_list = [
   "Fashion", 
   "Sport", 
   "Health",
   "Business",
   "Lifestyle" 
]

channel_list.each do |channel|
   Channel.create( channel: channel)
end

discussion_list = [
   [
      "Shut Out of Disney World, Where Do These N.B.A. Teams Go Next?",
      "##The eight teams that will not be part of the league’s conclusion in Florida now shift their attention to the future. And some have much brighter futures than others. 
      The N.B.A. has taken a concrete step to resume play, announcing on Thursday that its board of governors had officially approved a format, pending player approval, for the league to reopen at Walt Disney World.
      
      Many hurdles remain, including figuring out how to protect those in the so-called Disney “bubble,” which players are not likely to be allowed to leave, from the coronavirus.


      If the N.B.A. does return, it will be with just 22 of its 30 teams: The eight teams positioned for the playoffs in each conference, plus six teams that were six games or less behind the eighth seeds in their conferences.",
      2,
      4
   ],
   [
      "How to Avoid Feeling Overwhelmed During the Coronavirus Pandemic",
      "##Two tips to strike the right balance between taking care of your mental health and taking advantage of downtime.
      “New year, new me” memes were a common theme on 1st January 2020. We even had the benefit of starting a new decade with the promise of being fitter, more fulfilled and accomplished. What a difference a quarter can make.

      With all the plans I had for this year, it never occurred to me that this would be the first time I truly appreciated flour and toilet paper! These are the most volatile times many European entrepreneurs will have seen in their lifetimes. With this global pandemic, there has been a wide range of responses and it’s not uncommon for people to struggle with feeling overwhelmed.

      Messages on social media range from: “If you don’t come out of this pandemic with a new skill, you don’t lack time, you lack discipline” to “It’s OK if you’re not achieving peak productivity in the throes of a global pandemic! It’s fine to just chill in your pyjamas.”

      In these stressful times, how do you strike the right balance between taking care of your mental health and taking advantage of some downtime?
      
      ## 1. Gratitude
      Focusing on what we have, rather than what we’re missing is a vital part of fostering a healthy outlook. If you don’t have an Instagram-worthy mansion, you can still be grateful that you have somewhere to sleep at night.

      The restriction around leaving the house has led people to appreciate nature and fresh air. I am certainly savouring exploring Oxford with renewed enthusiasm. At the very least, we can be grateful that we have life. Now, more than ever, that is something to cherish.

      ##2. Connect with others.
      Social isolation does not have to mean emotional isolation. Connect with your friends and family. Check if they are OK and don’t be afraid to share how you truly feel with those you trust. Over the course of human history, this is the best time (or at least the least awful) to have a global pandemic.

      With the advances in technology and healthcare, we have the capability to reach out to people all over the globe with nothing more than a basic smartphone or laptop. Take advantage of this.",
      5,
      6
   ],
   [
      "Corporate America Has Failed Black America",
      "In the past week, it has seemed like every major company has publicly condemned racism. All-black squares cover corporate Instagram. Executives have made multimillion-dollar pledges to anti-discrimination efforts and programs to support black businesses.

      Yet many of the same companies expressing solidarity have contributed to systemic inequality, targeted the black community with unhealthy products and services, and failed to hire, promote and fairly compensate black men and women.
      
      “Corporate America has failed black America,” said Darren Walker, the president of the Ford Foundation and a member of the board of Pepsi, and who is black. “Even after a generation of Ivy League educations and extraordinary talented African-Americans going into corporate America, we seem to have hit a wall.”
      
      With dozens of cities protesting the violent deaths of George Floyd, Ahmaud Arbery, Breonna Taylor and others, a national conversation about racism is underway. For black executives, who have spent their lives excelling at business while overcoming structural discrimination, the killings and ensuing protests have unleashed an outpouring of emotion. Many are speaking candidly about their private fears, as well as their disappointment with the corporate apparatus that made them stars.
      
      Wes Moore, the chief executive of Robin Hood, a New York charity combating poverty, said he chooses his workout clothes to minimize the chances anyone will consider him, as a black man, dangerous. “I pick the outfit that I wear when I run strategically,” he said. “I wear shirts with my alma mater on it, Johns Hopkins, so people know I’m not a threat.” Mr. Arbery was shot to death by apparent vigilantes while out for a jog; three white men have been charged.
      
      Mr. Moore said he was fed up with being one of just a relatively small number of black executives in the top tier of American business. “The list starts getting very thin very quickly,” he said. “There aren’t enough good examples. We’ve been satisfied with exceptions and exceptionalism.”
      
      “We’ve been satisfied by putting John Rogers on every board,” he added, referring to the black investor who has been a director at Exelon, McDonald’s, Nike and The New York Times Company. “But we haven’t been deliberate about building bench and pipeline.”
      
      Robert F. Smith, a private equity billionaire and the richest black man in America, said he has been overwhelmed by conflicting feelings. “I am saddened, I am angry, I am upset and I am determined,” he said. “I run through that wave of emotions every minute.”
      
      Mr. Smith added that for the first time in a long time, he had reason for optimism. Over the past week, he said, he has been inundated with calls from other business leaders wanting to know what they can do. “This is the first time in my life I’ve seen not just empathy, but engagement,” he said. “This is unacceptable, and other C.E.O.s are asking how they can get involved.”
      
      
      Image&ldquo;Corporate America can no longer get away with token responses to systemic problems,&rdquo; said Darren Walker, the president of the Ford Foundation.
      “Corporate America can no longer get away with token responses to systemic problems,” said Darren Walker, the president of the Ford Foundation.Credit...Guerin Blask for The New York Times
      Mr. Walker, too, said the severity of this moment seemed to be shocking some companies into action. “Corporate America can no longer get away with token responses to systemic problems,” said Mr. Walker, who has been protesting in New York. “It is going to take a systemic response to sufficiently address this crisis that has been decades in the making.”
      
      ‘It’s complete B.S. It’s performative’
      As brands rushed to align themselves with protesters over the past week, their words often rang hollow, undermined by their own actions.
      
      Amazon called for an end to the “inequitable” treatment of black people. Yet the company has faced sustained criticism for poor working conditions and low pay. In March, it fired Christian Smalls, a black employee at a Staten Island warehouse who was demanding safer conditions while working in a pandemic, and the company’s general counsel disparaged him as “not smart or articulate.” Amazon has said Mr. Smalls violated its social distancing policy, and that the executive did not know he was black.
      
      Latest Updates: George Floyd Protests Updated 13m ago
      Majority of the Minneapolis City Council pledges to dismantle the Police Department.
      Trump sends National Guard troops home.
      New York’s mayor pledges to cut police funding and spend more on social services.
      See more updates
      The commissioner of the National Football League, Roger Goodell, issued a statement saying the protests express “the pain, anger and frustration that so many of us feel.” But his organization has banned players — most of whom are black — from kneeling to protest police brutality, and the quarterback most identified with the gesture, Colin Kaepernick, has been effectively blacklisted. (On Friday night, Mr. Goodell appeared to reverse himself, saying, “We, the National Football League admit we were wrong” and adding, “I personally protest with you.”)
      
      L’Oréal shared a post that read “Speaking out is worth it.” But three years ago, the makeup company dropped its first transgender model, Munroe Bergdorf, when she spoke out about racism after the white nationalist violence in Charlottesville, Va.
      
      “Most of these corporate statements were put together by the marketing team that was trying not to offend white customers and white employees,” said Dorothy A. Brown, a law professor who studies economic injustice at Emory University in Atlanta. “It’s complete B.S. It’s performative.”
      
      Companies have for the most part addressed racism only in the face of overwhelming public pressure. In the 1980s, for example, a global protest movement forced corporations including General Motors and Pepsi to stop doing business in apartheid South Africa. More often, however, companies have studiously avoided confronting the legacy of racism.
      
      Members of “corporate America have generally not distinguished themselves as moral leaders,” said Ursula Burns, the former chief executive of Xerox and a board member at Exxon. “They generally have gone along with the flow, and for a long time that’s all we expected them to do. They were responsible to their shareholders.”
      
      
      Image
      Ursula Burns in Davos, Switzerland, in 2018. &ldquo;I worry every day if a policeman is near me,&rdquo; she said this week.
      Ursula Burns in Davos, Switzerland, in 2018. “I worry every day if a policeman is near me,” she said this week.Credit...Denis Balibouse/Reuters
      Ms. Burns herself, despite leading a gilded life as a successful black C.E.O., said that law enforcement still makes her nervous. “I dress like the one percent. I drive like the one percent. I wear watches and jewelry like the one percent,” she said, adding: “I worry every day if a policeman is near me. They look at me as first and foremost a threat to their place in society.”
      
      She added that with police cracking down violently on protesters, “It is the scariest moment I have been in, in my entire life.”
      
      Even after the violence in Charlottesville, which led to an abrupt disbanding of President Trump’s business advisory councils, few companies made lasting policy changes.
      
      Instead, generations of well-intentioned pledges by businesses have resulted in only marginal advancement for the black community. The coronavirus pandemic has exacerbated grim employment trends, and today fewer than half of black adults in America have a job. Black workers make less money than white workers. That is due in part to the fact that they are more likely to have poorly paying service jobs, but research also shows that highly educated black employees are paid less than their white peers.
      
      “We don’t get paid the same amount for the same work,” said Mellody Hobson, the co-chief executive of Ariel Investments and a board member at JPMorgan and Starbucks. “We’ve been disproportionally affected in layoffs and unemployment.”
      
      ‘My blood boiled a long time ago’
      At many of America’s major employers, black men and women are absent from meaningful leadership roles.
      
      The nation’s largest health care company, CVS, has no black people on its senior leadership team.
      
      In finance, there are no black people on the senior leadership teams of Bank of America, JPMorgan (where managers in Phoenix branches were recorded making racist remarks) or Wells Fargo (which recently faced a federal lawsuit for discriminating against minority home buyers).
      
      In technology, there are zero black members of the senior leadership teams of Facebook, Google, Microsoft and Amazon.
      
      In total, there are just four black chief executives among the 500 largest companies in the country.
      
      Many big companies have added black directors to their boards in recent years. But while board seats can be levers to effect change, they do little to shift the power centers within companies. Exxon, the largest U.S. energy company, has two black board members, including Ms. Burns — but the management committee is composed entirely of white men.
      
      “We are put into these positions that are honorific, because they want our presence,” Mr. Walker said. “But we are not given authority and resources.”
      
      With black individuals deeply underrepresented in Silicon Valley and largely absent at the highest levels of major corporations, little of the wealth created in the stock market or the technology boom has gone to black families. Today, typical black households have just one-tenth the wealth of typical white households, according to Federal Reserve data.
      ",
      4,
      7
   ],
   [
      "Halima Aden and Anywear Team Up to Create Masks for Hijabi Frontline Workers",
      "ince the beginning of the COVID-19 crisis, shortages of masks and PPE gear have posed a problem, particularly within the United States. Thanks to generous donations from private organizations and designers making efforts to produce additional supplies, the situation has improved. Still, even when frontline workers have access to the right gear, issues can arise. Created for short-term use rather than 24/7 wear, traditional masks can quickly become uncomfortable. In fact many hospital workers have reported scarring and irritation due to the restrictive ear straps. For hijabi doctors and nurses the situation is further complicated with standard-issue masks that don’t account for headscarves and facial coverings.

      With its debut collection, Anywear attempts to address those issues. Dubbed “Banding Together,” the capsule of specially designed face coverings serve as an extra protective barrier and shield for reusable masks like the N95. Fashion heavyweights such as hairstylist Chris McMillan and makeup artist Daniel Martin were among Anywear’s first collaborators. Now model Halima Aden has come on board with a range of hijab and turban sets. Many brands have pivoted to mask making, but few have addressed the needs of frontline workers from all faiths. Aden’s custom hijabs add something new to the equation and the market—precisely what Anywear’s cofounders Emily Shippee and Adi-Lee Cohen had in mind. Inspired by the needs of real frontline workers, who Shippee interviewed as part of a story for Allure , the project expanded into an ongoing collaboration curated by the magazine’s editors. “When I started speaking to Adi about inclusivity and the designs, we wanted to make sure we included women who need to cover their hair and do so comfortably,” explained Shippee via email. “Of course, nobody was better for that than Halima because she used to clean hospital rooms when she first started working and had valuable, firsthand experiences.”",
      1,
      5
   ],
   [
      "These 15 Brands Are Donating Their Sale Proceeds to the Black Lives Matter Movement",
      "Yesterday, more than a week after the murder of George Floyd by four Minneapolis police officers, major fashion labels shared words of support for the Black Lives Matter movement on Instagram and Twitter. Many have yet to announce promised financial support to the movement or those involved in it, but independent designers and brands are responding to calls for action, either by committing to large donations or by giving the proceeds of their online sales to organizations like the NAACP, Black Lives Matter, and various funds providing bail for protestors.

      For individuals, there are myriad ways to lend long-term support to the movement. As Vogue’s Akili King and Naomi Elizee wrote, we can all make our fashion and beauty purchases from black-owned businesses. Another way is to shop from the brands that are stepping up, both by sharing useful information and by donating funds from the sales of their products to appropriate groups and organizations. Here are a few designers and labels doing just that.",
      1,
      5
   ],
   [
      "Aurora James on Her 15 Percent Pledge Campaign to Support Black-Owned Businesses",
      "This past Saturday, Aurora James, the founder of sustainable accessories brand Brother Vellies, was sitting on her porch and talking to a friend on the phone about the George Floyd protests sweeping through U.S. cities. Conversation quickly turned to more pragmatic ways in which the fashion industry could be of service, beyond the Black Lives Matter statements that were beginning to hit Instagram feeds.

      “I had brands reaching out saying, ‘Hey girl, how do you think we should handle this?’ You know, that kind of call-your-black-friend energy,” James remembers. “We were talking specifically about Target, and I said, if we’re thinking about big retailers that are starting to offer solidarity with people of color, we hold a trillion dollars of spending power in this country. Black people represent 15% of the population, and so stores like Target should make sure they're hitting 15% of black-owned business on their shelves. If they agreed to do that in a major way, which isn't even that major—it's kind of the bare minimum, in fact—then a whole ricochet effect could take place. Why not try?”",
      1,
      10
   ],
   [
      "NFL Commissioner Goodell Admits the League Was 'Wrong for Not Listening to Players'",
      "(NEW YORK) — NFL Commissioner Roger Goodell said the league was wrong for not listening to players fighting for racial equality and encouraged them to peacefully protest.

      One day after 2018 NFL MVP Patrick Mahomes and several of his peers released a video demanding the league condemn racism, Goodell made his strongest statement on the issues many players passionately support.
      
      George Floyd’s death has ignited nationwide protests over racial injustice and police brutality, issues former San Francisco 49ers quarterback Colin Kaepernick began speaking out against in 2016 when he started taking a knee during the national anthem.
      
      “It has been a difficult time for our country. In particular, black people in our country,” Goodell said in a video released Friday. “First, my condolences to the families of George Floyd, Breonna Taylor, Ahmaud Arbery and all the families who have endured police brutality. We, the National Football League, condemn racism and the systematic oppression of black people. We, the National Football League, admit we were wrong for not listening to NFL players earlier and encourage all to speak out and peacefully protest. We, the National Football League, believe Black Lives Matter. I personally protest with you and want to be part of the much needed change in this country.",
      2,
      9
   ],
   [
      "The Challenge to White Quarterbacks to Step Up on Race",
      "When New Orleans Saints quarterback Drew Brees told Yahoo Finance on Wednesday that NFL players kneeling during the national anthem was “disrespectful,” the condemnation, from inside and outside the NFL, was understandably swift. (In an emotional video posted on social media, teammate Malcolm Jenkins called Brees “part of the problem”; protestors in New Orleans, where Brees has been beloved, cursed him in the streets). And while Brees offered an apology on Thursday, the wounds he inflicted will take time to heal. If they ever do at all.

         During a time of national reckoning on race in the wake of Floyd’s death, millions of Americans, Brees included, made symbolic promises on social media and elsewhere to stand in support of African-Americans grieving an unimaginable tragedy caught on film. Brees, however, criticized a gesture — kneeling during the anthem — that many players in the NFL, which is 70% people of color, view as a peaceful act of opposition to the sort of event the world saw in South Minneapolis, on Memorial Day. “The timing is awful,” says Detroit Lions linebacker Jalen Reeves-Maybin, who has knelt for the anthem.
         
         Brees brought up the military service of his grandfathers as a basis opposing kneeling; both of Reeves-Maybin’s grandfathers were in the military. One was a pilot in Desert Storm, and his great grandfather fought in World War II. “I think we all kind of got the point where we’re tired of people changing the narrative on the protest that started with Colin Kaepernick, who was kneeling against police brutality and black people being killed and on being held accountable,” says Reeves-Maybin. “And when we’ve just seen video that is plain as day, and for you to still come out and just try to twist it, it’s a slap in the face. It’s kind of unacceptable.”",
         2,
         8
   ],
   [
      "Alzheimer’s: Copper transport in blood provides fresh clues",
      "Faulty regulation of copper levels in tissues plays a major role in a wide range of illnesses, including Alzheimer’s disease, Parkinson’s disease, and motor neuron disease. An investigation of molecules that carry copper in the bloodstream has provided new leads for diagnosis and treatment.",
      3,
      3
   ],
   [
      "Could a novel UV light device inactivate SARS-CoV-2 on surfaces?",
      "Physicists have found a way to make powerful UV LEDs that they believe manufacturers could incorporate into lightweight devices for destroying pathogens such as the new coronavirus.",
      3,
      3
   ]
]

discussion_list.each do |title, content, channel_id, user|
   Discussion.create(title: title, content: content, channel_id: channel_id, user_id: user)
end