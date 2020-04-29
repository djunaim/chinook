select Playlist.Name as Playlist, count(PlaylistTrack.TrackId) as TotalNumOfTracks
from Playlist
	join PlaylistTrack
		on Playlist.PlaylistId = PlaylistTrack.PlaylistId
group by Playlist.PlaylistId, Playlist.Name