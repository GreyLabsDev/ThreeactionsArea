# ThreeactionsArea

Single-page web app for sharing music singles/albums with your audience. It was developed for my own single "Unusual" and future releases.
Project is fully reusable, just use your own text/links and rebuild web app.

![screenshoot](https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/scr.png)

### How to use widgets
**CoverArtCard**

Widget for showing track or album cover art
```
CoverArtCard(
  imageUrl: "https://somehost.com/cover_art.png", // url of your cover art
)
```
**MusicServiceCard**

Widget for redirecting to music services with track or album
```
MusicServiceCard(
  title: "Spotify", // Music service title, like Spotify, Apple music and others
  redirectUrl: "https://open.spotify.com/track/your_track", // your track url on this music service
  iconUrl: "https://somehost.com/icon_of_music_service.png", // music service icon url
)
```

### Libraries
- [url_launcher](https://pub.dev/packages/url_launcher)

### Useful links
- [Flutter documentation](https://flutter.dev/docs)
- [Dart documentation](https://flutter.dev/docs/resources/bootstrap-into-dart)
- [Web support for Flutter](https://flutter.dev/web)
- [Building a web application with Flutter](https://flutter.dev/docs/get-started/web)
