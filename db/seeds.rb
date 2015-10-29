


(1..5).each do |i|
	source = Source.new
	source.name = "fuente #{i}"
	source.url = "http://www.fuente#{i}.cl"
	source.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat vulputate lobortis."
	source.save
end


(1..10).each do |i|
	tag = Tag.new
	tag.tag_name = "tag #{i}"
	tag.save
end

(1..20).each do |i|
	news_item = NewsItem.new
	news_item.title = "noticia #{i}"
	news_item.url = "http://www.noticia#{1}.cl"
	news_item.body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat vulputate lobortis. Etiam eleifend cursus orci, sed lobortis quam blandit eget. Nulla ac augue risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam tempor lacinia mauris et placerat. Aenean finibus nec magna a pharetra. Morbi at imperdiet risus. Pellentesque tincidunt vestibulum nibh id bibendum. Curabitur nec lobortis nulla. Nullam aliquam vestibulum nisl eu dapibus. Pellentesque quis nulla vitae tortor sollicitudin fringilla vel eget mi. Cras efficitur pretium tortor, convallis feugiat lacus efficitur nec. Mauris blandit augue magna, at faucibus mi suscipit a. Interdum et malesuada fames ac ante ipsum primis in faucibus. "
	news_item.source = Source.all.sample
	news_item.tags = Tag.all.sample(3)
	news_item.save
end
