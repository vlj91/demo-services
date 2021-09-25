default_categories = [
  {
    name: 'cleaning',
    keywords: ['clean', 'cleaning']
  },
  {
    name: 'gardening',
    keywords: ['garden', 'gardening', 'lawnmowing']
  }
]

default_categories.each do |i|
  Category.find_or_create_by({
    name: i[:name],
    keywords: i[:keywords].join(',')
  })
end
