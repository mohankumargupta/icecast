# Home Assistant Add-on: Icecast

Installs the Icecast streaming server as a Home Assistant addon.

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]

## About

Certain radio stations and live streams won't play on a device like a Google Home Mini, especially those HLS streams with a URL ending in m3u8 .

A possible solution is to push those streams to a streaming server like Icecast that is on the local network, then send the generated media URL on the Icecast server to the Google Home Mini.

## Features

- starts an Icecast server
- access to Icecast's admin page through Home Assistant Sidebar menu.
- can pre-configure multiple input streams to be pushed to the Icecast server.

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
