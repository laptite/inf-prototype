# SEED FILE -- Test Content
author = Creator.create(name: 'Rebecca Drolen', bio: 'Rebecca Drolen is an artist and educator currently working in Arkansas.')
photographer = Creator.create(name: 'Emma de Clercq', bio: 'Emma de Clercq is a writer and Editor of INFRINGE.')
author_credit = author.credits.create(kind: 'Words')
image_credit = photographer.credits.create(kind: 'Images')
category = Category.create(name: 'Art + Culture')
post = category.posts.create(title: 'Factory', teaser: 'Rebecca Drolen’s Factory series explores the body and hair as a source of protection')
post.post_credits.create([{credit: author_credit}, credit: image_credit])


