# Home Assistant Add-on: Icecast

Installs the Icecast streaming server as a Home Assistant addon.

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]

## About

Certain radio stations and live streams won't play on a device like a Google Home Mini, especially those HLS streams with a URL ending in m3u8 .

## Features

- starts an Icecast server
- can configure multiple input streams
- uses ffmpeg to publish input streams to the streaming server
- users can list the input streams as well as their corresponding mountpoints on the
  streaming server via the addon's configuration page.
- Media URLs are then are available on the client device in the following form:
  **http://<HA_IP_ADDRESS>:8000/<MOUNTPOINT>**

  HA_IP_ADDRESS: LAN IP address of the Home Assistant instance.
  MOUNTPOINT: Stream name specified by user

  You can test these media urls in a client like VLC player, then use it in Home Assistant by running the media_player.play_media service .

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
