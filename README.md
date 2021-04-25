# docker-youtube-looper

Loops a single video over and over and over to a YouTube livestream. Use at own risk.

Parameters:
* $VIDEO - video name
* $YOUTUBE_URL - RTMP stream URL
* $KEY - RTMP key

Example run:
```docker run -e YOUTUBE_URL=rtmp://a.rtmp.youtube.com/live2 -e KEY=xxxx-xxxx-xxxx-xxxx-xxxx -e VIDEO=epicmeme.mp4 -v /home/$USER/Videos/epicmeme.mp4:/stream/epicmeme.mp4 vaults/youtube-looper```
