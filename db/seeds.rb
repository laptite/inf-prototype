# SEED FILE -- Test Content
category = Category.create(name: 'Art + Culture')
post = category.posts.create(title: 'Factory', teaser: 'Rebecca Drolen’s Factory series explores the body and hair as a source of protection')
post.sections.create([
	{ body: 'Having previously explored our contradictory relationship with our hair, Rebecca Drolen’s new series Factory once again sees the photographer using the fibre to highlight themes of power, fetishisation and conflicting beauty ideals.'},
	{ body: 'While the surreal scenes in Hair Pieces looked at the “bizarre social contexts of hair, and our visceral response when it is found out place,” Factory takes this idea one step further. In this ongoing series, the photographer depicts a factory-like setting in which hair, nails, and teeth are added to the body, rather than removed. “The figures in the images are building their defences,” Drolen explains. “Much like a shaved animal would be vulnerable in the wild, I attempt to humorously consider how the body itself can be increased as a means of protection within a society obsessed with hairless women.” 

At first glance, the imagery appears light and playful, a disarming quality which allows Drolen to subtly explore more troubling themes, bubbling beneath the surface. Her idea for Factory was formed during the 2016 US election. “It was a time when I stood in awe that my country could affirm to the highest office a person who bragged about feeling powerful enough to sexually assault women, and regularly publicly praised or shamed women based on their appearance,” she explains. “While I knew that these attitudes existed in our culture, I never felt that they had been so publicly affirmed or elevated as with the election of Donald Trump as President of the United States.”'},
	{ body: '“Much like a shaved animal would be vulnerable in the wild, I attempt to humorously consider how the body itself can be increased as a means of protection within a society obsessed with hairless women”
Rebecca Drolen'},
	{ body: 'Drolen’s starting ground for the project was a popular meme depicting women’s tights made to resemble hairy legs. The tongue-in-cheek tagline “Discourage any potential perverts,” is followed with “Once the guys lay eyes on your shapely and excessively hairy stems, they won’t even bother giving you a second glance – unless they’re into that sort of thing.” Drolen shows how revealing this is in illustrating ingrained attitudes towards women’s bodies, highlighting “the troubling narrative that a woman’s body hair is repulsive, unless fetishized”.'}
])
author = Contributor.create(name: 'Rebecca Drolen', bio: 'Rebecca Drolen is an artist and educator currently working in Arkansas.')
photographer = Contributor.create(name: 'Emma de Clercq', bio: 'Emma de Clercq is a writer and Editor of INFRINGE.')
author.credits.create(name: 'Words')
photographer.credits.create(name: 'Images')
post.post_contributors.create(contributor: photographer)
