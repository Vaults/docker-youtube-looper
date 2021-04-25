VBR="4500k"                                    
FPS="30"                                    
QUAL="veryfast"                              

SOURCE="/stream/$VIDEO"           
FULL_URL="$YOUTUBE_URL/$KEY"

echo "$SOURCE";
echo "$FULL_URL";


ffmpeg \
    -stream_loop -1 \
    -re -f mp4 -i "$SOURCE" -deinterlace \
    -vcodec libx264 -pix_fmt yuv420p -preset $QUAL -r $FPS -g $(($FPS * 2)) -b:v $VBR \
    -acodec libmp3lame -ar 44100 -threads 6 -qscale:v 3 -b:a 712000 -bufsize 512k \
    -f flv "$FULL_URL"