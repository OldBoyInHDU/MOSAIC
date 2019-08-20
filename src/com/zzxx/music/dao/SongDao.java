package com.zzxx.music.dao;



import java.util.List;

import com.zzxx.music.beans.Search;
import com.zzxx.music.beans.Song;

public interface SongDao {
    Song addSong(Song song);
    //删
    void removeSongBySongId(String songid);
    //改

    //查 所有歌曲
    List<Song> findAllSongs();

    //根据 歌名查歌曲
    List<Song> getSongBySongName(String songname);

    //根据 专辑查歌曲
    List<Song> getSongByAlbumName(String albumname);

    //根据歌手查歌曲
    List<Song> getSongByArtistName(String artistname);
    
    //根据类型查歌曲
    List<Song> getSongByType(String type);

    //
    List<Song> findSongsByPage(int currentPage, int pageSize,String type);

    //
    int getCount(String type);

    public List<Search> selectAllSource(String name);
    
    
}
