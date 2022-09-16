# ThreeactionsArea

My personal single-page website. It was developed for sharing py music releases, some info about me and my projects.
You can use this project as example for your own web app.

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
- [Deploy your Flutter web application on github pages](https://itnext.io/deploy-and-maintain-your-flutter-web-build-in-github-pages-exclusively-6dfc3c3ec9cc)
