#!/usr/bin/with-contenv bashio

#cat /data/options.json

for stream in $(bashio::config "streams")
do
 stream_name=$(bashio::jq "$stream" ".name")
 stream_url=$(bashio::jq "$stream" ".stream_url")
 #echo "Stream name: $stream_name"
 #echo "Stream URL: $stream_url"
 #echo "----"
 mkdir -p /etc/services.d/ffmpeg_${stream_name}
 bashio::var.json \
   STREAM_NAME $stream_name \
   STREAM_URL $stream_url | tempio \
                            -template /usr/share/tempio/ffmpeg.gtpl \
                            -out /etc/services.d/ffmpeg_${stream_name}/run
 chmod +x /etc/services.d/ffmpeg_${stream_name}/run
 cat /etc/services.d/ffmpeg_${stream_name}/run
 #echo "----"
done