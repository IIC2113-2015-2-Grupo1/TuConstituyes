source = Source.new
source.name = 'El Mostrador'
source.url = 'http://www.elmostrador.cl'
source.description = "Los Principios Editoriales que rigen al diario EL MOSTRADOR
son la independencia,  el pluralismo  informativo, el respeto y valoración
positiva de la diversidad, la promoción de los derechos humanos y civiles, la
fiscalización  de  los  poderes  establecidos y el diálogo ciudadano con o a
través de los medios"
source.save

source = Source.new
source.name = 'La Cuarta'
source.url = 'http://www.lacuarta.com/'
source.description = 'El diario La Cuarta en su version digital.'
source.save

source = Source.new
source.name = 'La Lupa de la Constitución'
source.url = 'http://www.lalupadelaconstitucion.cl/'
source.description = 'Este es un aporte a la discusión de la creación de una
nueva Constitución y responde a una iniciativa de fomentar la participación
ciudadana y de la educación cívica, ya que a través de infografías y videos
cortos se explican diferencias, términos, alcances, impactos y se compara el
marco regulatorio chileno con la región.'
source.save

source = Source.new
source.name = 'La Tercera'
source.url = 'http://www.latercera.com/'
source.description = 'El diario La Tercera en su version digital.'
source.save




# (1..10).each do |i|
# 	tag = Tag.new
# 	tag.tag_name = "tag #{i}"
# 	tag.save
# end

# (1..20).each do |i|
# 	news_item = NewsItem.new
# 	news_item.title = "noticia #{i}"
# 	news_item.url = "http://www.noticia#{1}.cl"
# 	news_item.body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat vulputate lobortis. Etiam eleifend cursus orci, sed lobortis quam blandit eget. Nulla ac augue risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam tempor lacinia mauris et placerat. Aenean finibus nec magna a pharetra. Morbi at imperdiet risus. Pellentesque tincidunt vestibulum nibh id bibendum. Curabitur nec lobortis nulla. Nullam aliquam vestibulum nisl eu dapibus. Pellentesque quis nulla vitae tortor sollicitudin fringilla vel eget mi. Cras efficitur pretium tortor, convallis feugiat lacus efficitur nec. Mauris blandit augue magna, at faucibus mi suscipit a. Interdum et malesuada fames ac ante ipsum primis in faucibus. "
# 	news_item.source = Source.all.sample
# 	news_item.tags = Tag.all.sample(3)
# 	news_item.save
# end



(1..10).each do |i|
	Tag.create({
		tag_name: "Tag #{i}"
	})
end

image = ["http://hordago.org/wp-content/uploads/2012/10/procesoConstituyente.jpg",
		"http://s3.amazonaws.com/latetera/app/public/system/photos/4671/original/michelle-bachelet-2013_195740.jpg",
		"http://s3.amazonaws.com/latetera/app/public/system/photos/5716/original/Pi%C3%B1era_dinosaurio.jpg?1438561568",
		"http://www.revistamercado.do/app2/wp-content/uploads/images/imagen-CHILE.jpg"]

(1..20).each do |i|
	NewsItem.create({
		title: "Noticia #{i}",
		url: "http://www.noticia#{1}.cl",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat vulputate lobortis. Etiam eleifend cursus orci, sed lobortis quam blandit eget. Nulla ac augue risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam tempor lacinia mauris et placerat. Aenean finibus nec magna a pharetra. Morbi at imperdiet risus. Pellentesque tincidunt vestibulum nibh id bibendum. Curabitur nec lobortis nulla. Nullam aliquam vestibulum nisl eu dapibus. Pellentesque quis nulla vitae tortor sollicitudin fringilla vel eget mi. Cras efficitur pretium tortor, convallis feugiat lacus efficitur nec. Mauris blandit augue magna, at faucibus mi suscipit a. Interdum et malesuada fames ac ante ipsum primis in faucibus. ",
		source: Source.all.sample,
		tags: Tag.all.sample(3),
		region_id: 1,
		image: image.sample
	})
end
