#!/usr/bin/env bash

mkdir -p /etc/services.d/ffmpeg_iheart_radio
echo '#!/usr/bin/env bash' > /etc/services.d/ffmpeg_iheart_radio/run
echo 'while true' >> /etc/services.d/ffmpeg_iheart_radio/run
echo 'do' >> /etc/services.d/ffmpeg_iheart_radio/run
echo 'if [ -f /var/log/icecast2/error.log ];' >> /etc/services.d/ffmpeg_iheart_radio/run
echo 'then' >> /etc/services.d/ffmpeg_iheart_radio/run
echo 'echo moomooomoo' >> /etc/services.d/ffmpeg_iheart_radio/run
echo 'break' >> /etc/services.d/ffmpeg_iheart_radio/run
echo 'fi' >> /etc/services.d/ffmpeg_iheart_radio/run
echo 'done' >> /etc/services.d/ffmpeg_iheart_radio/run
echo 'ffmpeg -re -i https://stream.revma.ihrhls.com/zc6951/hls.m3u8 -c:a libmp3lame -b:a 128k -content_type audio/mpeg -f mp3 icecast://source:password@localhost:8000/iheartradio' >> /etc/services.d/ffmpeg_iheart_radio/run

chmod +x /etc/services.d/ffmpeg_iheart_radio/run
