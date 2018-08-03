Song class
Song.new_by_filename



def self.new_from_filename(filename)
  song.artist_name = song.new_by_name(song)
  song.name = song.new_by_name(song)

  song.new_from_filename = words_str.split('-')
  song.artist, song.name = filename.split(" - ")
  new_song = self.new(song)
  new_song.artist_name = artist
  new_song.chomp(".mp3")
end

def self.destroy_all
  @@all.clear
end
def create_from_filename

end

def self.alphabetical
  @@all.sort
end


This method will do four things:

It must parse a filename to find the song name and artist name. (Hint: every file separates the song and artist with a " - "). Now we put those values to use.

From here, we will create a new song instance using the string we gathered from the filename.

We'll also want to associate that new song with an artist. To do this we'll use a helper method: Song#artist_name=(artist_name).

Return the new song instance.

You may have seen something similar in the past where we have the instance of the artist. If we had the artist object, we could simply assign the artist to the song with some code that looks like this: our_song_instance.artist = our_artist_instance. Since we only have the artist name as a string (not an instance of the Artist class), we'll create a method that takes in the name and gets the artist object. Let's call this Song#artist_name=(artist_name).



Song#artist_name=(name)
This method will do two things. Both of these things will involve collaboration with the Artist class:

Turn the artist's name as a string into an artist object

First we need to get the instance of the Artist class that represents that artist. There are two possibilities here:

Either we have to create that artist instance
Or it already exists and we have to find that artist instance.
To achieve this, we'll need to collaborate with the Artist class. We want to send the artist's name (a string--remember we are getting this from the parsed filename) to the Artist class to achieve the functionality described above in #1 and #2. Let's call this method Artist.find_or_create_by_name(artists-name-here).

Assign the song to the artist (Since an artist has many songs, we'll want to make this association)

Now that we have the artist instance, we'll want to again collaborate with the Artist class by calling on the Artist#add_song(some_song) method.