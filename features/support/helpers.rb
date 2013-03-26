def path page
  return root_path if page == "the homepage"
  raise "I don't know what '#{page}' means"
end
