require 'zip'

def unzip_file(zip_file, destination)
  # Create the destination directory if it doesn't exist
  Dir.mkdir(destination) unless Dir.exist?(destination)

  Zip::File.open(zip_file) do |zip|
    zip.each do |entry|
      entry.extract(File.join(destination, entry.name))
    end
  end
end

zip_file = 'img.zip'
destination = 'images'

unzip_file(zip_file, destination)
