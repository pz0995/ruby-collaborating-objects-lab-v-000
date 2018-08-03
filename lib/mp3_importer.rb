MP3Importer class


  def files



  end

  def attribute



  end













Let's start with the MP3 Importer. Build an MP3Importer class that parses a directory of files and sends the filenames to a song class to create a library of music with artists that are unique. To do this, you'll need two methods: MP3Importer#files and MP3Importer#import. Your MP3Importer class should also have a path attribute that gets set on initialization.

You should write code that responds to MP3Importer.new('./db/mp3s').import. Google around for how to get a list of files in a directory! Make sure you only get .mp3 files.

Since we have to send the filenames to the Song class, we'll end up calling the following code in the #import method: Song.new_by_filename(some_filename). This will send us to the Song class, specifically Song.new_by_filename.

The MP3 Importer will parse all the filenames in the db/mp3s folder and send the filenames to the Song class
The Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class
The Artist class will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).