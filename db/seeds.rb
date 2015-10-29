(1..5).each do |i|
	Source.create({
		name: "Fuente #{i}",
		url: "http://www.fuente#{i}.cl",
		description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat vulputate lobortis.",
	})
end

(1..10).each do |i|
	Tag.create({
		tag_name: "Tag #{i}"
	})
end

(1..20).each do |i|
	NewsItem.create({
		title: "Noticia #{i}",
		url: "http://www.noticia#{1}.cl",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat vulputate lobortis. Etiam eleifend cursus orci, sed lobortis quam blandit eget. Nulla ac augue risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam tempor lacinia mauris et placerat. Aenean finibus nec magna a pharetra. Morbi at imperdiet risus. Pellentesque tincidunt vestibulum nibh id bibendum. Curabitur nec lobortis nulla. Nullam aliquam vestibulum nisl eu dapibus. Pellentesque quis nulla vitae tortor sollicitudin fringilla vel eget mi. Cras efficitur pretium tortor, convallis feugiat lacus efficitur nec. Mauris blandit augue magna, at faucibus mi suscipit a. Interdum et malesuada fames ac ante ipsum primis in faucibus. ",
		source: Source.all.sample,
		tags: Tag.all.sample(3)
	})
end

