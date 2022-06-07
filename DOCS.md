# Home Assistant Add-on: Icecast

# Configuration Tab

In addition to starting an Icecast server on port 8000, the addon also has an ability to push input streams to the Icecast server without needing an external program like ffmpeg or butt to do so, although you can go that way too if needed.

The addon's configuration page allows you to configure this.

The default configuration pushes 1 stream to the icecast server.

![default configuration][default_configuration]

Here is the snippet that appears under the **streams** key:

```yaml
- name: iHeartRadio Cafe
  mountpoint: iheartcafe
  stream_url: https://stream.revma.ihrhls.com/zc6951/hls.m3u8
```

[default_configuration]: https://raw.githubusercontent.com/mohankumargupta/icecast/master/images/default-configuration.png
