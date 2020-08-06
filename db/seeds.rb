20.times do |i|
    Note.create(title: "Title-#{i+1}", note: 'text of note')
end