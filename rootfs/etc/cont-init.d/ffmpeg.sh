#!/usr/bin/env bash

mkdir -p /etc/services.d/ffmpeg_stream_name
echo '#!/usr/bin/env bash' > /etc/services.d/ffmpeg_stream_name/run
echo 'while true' >> /etc/services.d/ffmpeg_stream_name/run
echo 'do' >> /etc/services.d/ffmpeg_stream_name/run
echo 'if [ -f /var/log/icecast2/error.log ];' >> /etc/services.d/ffmpeg_stream_name/run
echo 'then' >> /etc/services.d/ffmpeg_stream_name/run
echo 'echo moomooomoo' >> /etc/services.d/ffmpeg_stream_name/run
echo 'break' >> /etc/services.d/ffmpeg_stream_name/run
echo 'fi' >> /etc/services.d/ffmpeg_stream_name/run
echo 'done' >> /etc/services.d/ffmpeg_stream_name/run
echo 'ffmpeg -re -i https://mirchiplaylive.akamaized.net/hls/live/2036929/MUM/MRETRO_Auto.m3u8 -c:a libmp3lame -b:a 128k -content_type audio/mpeg -f mp3 icecast://source:password@localhost:8000/mirchi' >> /etc/services.d/ffmpeg_stream_name/run

chmod +x /etc/services.d/ffmpeg_stream_name/run
