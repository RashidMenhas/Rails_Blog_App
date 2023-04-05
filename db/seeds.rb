
authors = User.create([
    {name: 'Andor', photo:'https://whatsondisneyplus.com/wp-content/uploads/2022/09/andor-avatar.png', bio: 'Rebel fighter from Kenari.An accomplished Alliance Intelligence officer with combat field experience, Captain Cassian Andor commands respect from his Rebel troops with his ability to keep a cool head under fire and complete his missions with minimal resources.'},
    {name: 'Luthen Rael', photo: 'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2022/10/Andor_Luthen-Rael.png?fit=2554,1642&quality=60&strip=all&ssl=1', bio: 'A mysterious man with an eye for valuable finds, Luthen Rael will go to great lengths and traverse the galaxy to locate the pieces he needs to achieve his goals. A chameleon in dress and identity, Luthen capably hides behind countless faces and identities as the need arises.'},
    {name: 'Bix Caleen', photo: 'https://lumiere-a.akamaihd.net/v1/images/bix-caleen-main-b_1450fe71.jpeg?region=103%2C0%2C1427%2C803&width=960', bio: 'Bix Caleen was a human female and mechanic who was the owner of the Caleen Salyard on the Free Trade sector planet of Ferrix. She worked alongside Timm Karlo, who was also her lover. She was close with her ex-boyfriend, Cassian Andor, who trusted her greatly. She also had offworld connections, namely Luthen Rael.'},
    {name: 'Syril Karn', photo: 'https://lumiere-a.akamaihd.net/v1/images/syril-karn-main-a_da01439f.jpeg?region=0%2C51%2C1920%2C960', bio: 'Syril Karn believes wholeheartedly in order and justice. The ambitious inspector hopes to make a name for himself within the ranks of the Empire by quelling signs of rebellious activity and exposing lawbreakers.'},
    {name: 'Sergeant Linus Mosk', photo: 'https://pbs.twimg.com/media/FdTUjpUWQAEzO0n.jpg:large', bio: 'Sergeant Linus Mosk was a human male who served in Preox-Morlana\'s Pre-Mor Enforcement. Following the murder of two Preox-Morlana employees in 5 BBY, Mosk was summoned to Corporate Security Headquarters on the planet Morlana One to meet with Deputy Inspector Syril Karn.'},
    {name: 'Maarva Andor', photo: 'https://www.starwarsnewsnet.com/wp-content/uploads/2022/09/Maarva_Poster_Andor-691x1024.jpg', bio: 'A member of the Daughters of Ferrix, Maarva is revered for the sharpness of her mind and firmness of her spirit. Despite the years and her failing health, she has a strong independent streak in her, something she shares with her adopted son, Cassian.'},
    {name: 'Saw Gerrera', photo: 'https://cdn.theplaylist.net/wp-content/uploads/2021/06/14175118/forest-whitaker-andor-rogue-one.jpg', bio: 'A battered veteran of the Clone Wars as well as the ongoing rebellion against the Empire, Saw Gerrera leads a band of Rebel extremists. Saw has lost much in his decades of combat, but occasional flashes of the charismatic and caring man he once was shine through his calloused exterior'}
  ])
  
  posts = Post.create([
    {author_id: 1, title: 'Keep fighting the Empire', text: 'We are close to destroying the Death Star, all rebels come full out'},
    {author_id: 1, title: 'StormTroppers Weakness', text: 'Hit them with blasters on the there chest plates, they will fall and hit the ground. In the air Ti-Fighters are fast but slow on corners.'},
    {author_id: 1, title: 'Help is on the Way', text: 'The Empire is pressing but fear not we are sending a troop, the Millenium is on it\'s way with reinforcements'},
    {author_id: 1, title: 'Aldhani Strike', text: 'The 80 Million credits stolen from the Empire, we got them where we want. We will help the refugees and keep fighting'},
    {author_id: 7, title: 'Aldhani Strike', text: 'The 80 Million credits stolen from the Empire, we got them where we want. We will help the refugees and keep fighting'},
    {author_id: 7, title: 'Keep fighting the Empire', text: 'We are close to destroying the Death Star, all rebels come full out'},
    {author_id: 2, title: 'Keep fighting the Empire', text: 'We are close to destroying the Death Star, all rebels come full out'},
    {author_id: 3, title: 'Keep fighting the Empire', text: 'We are close to destroying the Death Star, all rebels come full out'}
  ])
  
  comments = Comment.create([
    {author_id: 2, post_id: 1, text: 'Don\'t miss that hit'},
    {author_id: 7, post_id: 1, text: 'We will keep on doing so'},
    {author_id: 3, post_id: 1, text: 'Thank you for your support 😊'},
    {author_id: 1, post_id: 2, text: 'Noted Andor, thans for the update'}
  ])
  
  likes = Like.create([
    {author_id: 2, post_id: 1},
    {author_id: 3, post_id: 1},
    {author_id: 1, post_id: 7},
    {author_id: 5, post_id: 1},
    {author_id: 6, post_id: 7}
  ])