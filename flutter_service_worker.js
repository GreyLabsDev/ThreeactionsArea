'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.json": "19bf2c3e7a9b0c7f0c1e3c550cc576bc",
"assets/AssetManifest.bin": "067bca9f268fe1adda03cbd0d888ba7c",
"assets/assets/img/card_conf_pl.jpg": "9ae71af744a0af33983629582580759a",
"assets/assets/img/ic_linkedin.svg": "6ac2e6f78b1455aa23331295204c1e83",
"assets/assets/img/img_gallery_5.jpg": "c6a4058dcf9d02c725269d84e8ff9381",
"assets/assets/img/button_bg_contacts.png": "cf72e83816b47ffbadbe8b779877b4d4",
"assets/assets/img/img_gallery_1.jpg": "5d306de601452821285bf9a82933cca2",
"assets/assets/img/card_conf_mb.jpg": "2dca4f8701970c6bdf0e9ed2137466f7",
"assets/assets/img/logo_bio_big.png": "2c542f2282497cf57ad90d77315594bf",
"assets/assets/img/logo_skills_big.png": "2187665e88cfb285fc470d1f7ad7d95d",
"assets/assets/img/logo_contacts_big.png": "4bf89d10bbd3de1e091aa0c6f7023adb",
"assets/assets/img/img_bio_sport.jpg": "92f567d5ef3cfa56aff6598fd7943fb9",
"assets/assets/img/card_conf_st.jpg": "0b83f62f502d1eca8cf1d43e525f90ad",
"assets/assets/img/logo_skills_base.png": "3098652b1090054c852f13629131996f",
"assets/assets/img/logo_art_part_bottom.png": "14dfc687cd3e59776fc8030394b9db1e",
"assets/assets/img/logo_bio.png": "cf3a7f37e0654cc1d5be4d007597d6ef",
"assets/assets/img/logo_contacts_base.png": "625a140d389981d743fe55196add4c5f",
"assets/assets/img/img_gallery_2.jpg": "88711910e5e222858cf46ac3c5cc7c61",
"assets/assets/img/logo_skills.png": "acf6733aeb656b0c7d9035ebd538f086",
"assets/assets/img/logo_art_part_top.png": "fbd4c62800208906035ad3edfdde713c",
"assets/assets/img/ic_github.svg": "93fbbf84fd22b6e903b68f2e5199b10b",
"assets/assets/img/logo_contacts_part_top.png": "653286a1fb30ca5769b5dfd2267b2a33",
"assets/assets/img/ic_telegram.svg": "fff5894a3a9d471006a2dd7d37f20688",
"assets/assets/img/ic_google.svg": "225db8184917a58495a93fc83a035514",
"assets/assets/img/button_bg_art.png": "19c8c78604b4e47eba12f7643dc6b916",
"assets/assets/img/ic_x_twitter.svg": "b3fb2c08d14567f88d84df17944288e9",
"assets/assets/img/logo_contacts.png": "a93104afd0c077ab2bc66329a694720a",
"assets/assets/img/img_gallery_4.jpg": "7df7028199c3fb34547b311645c55f51",
"assets/assets/img/logo_art_base.png": "9e5e2cbb0c02a0ee743d3abc6e5bac9d",
"assets/assets/img/logo_skills_part.png": "cd0ce1615ee15c19041ea8ed412eea24",
"assets/assets/img/img_bio_hobby.jpg": "a27b2b400c67a80c33aa52554ed9c37f",
"assets/assets/img/logo_bio_base.png": "75250a235b880c3bcf0665aa606d2c6c",
"assets/assets/img/logo_contacts_part_bottom.png": "8cd645cf42db92e58a5b467c29051736",
"assets/assets/img/card_conf_uic.jpg": "671d26c24a85838301b692959af7142c",
"assets/assets/img/img_gallery_3.jpg": "e7de1e6c5eb59475c566cf3b41b281d3",
"assets/assets/img/logo_art_big.png": "cede9071a110138efeeb7e052e592ac8",
"assets/assets/img/logo_bio_part.png": "38a3a6e00b897a35faa53aa7ed4ce763",
"assets/assets/img/button_bg_skills.png": "51895796b983e4cec43b9a9875bca1c6",
"assets/assets/img/logo_art.png": "aeee803f411f884774e5b52698985644",
"assets/assets/img/button_bg_bio.png": "14b7992da228762e0e88aef4126f7ce4",
"assets/FontManifest.json": "7ab6c65ea037de8df68928db44408908",
"assets/fonts/EBENYA.ttf": "a74f5fb6c7f578b9778b449341bc2085",
"assets/fonts/Nohemi-Medium.ttf": "340730b16e1fc32fe6c5e2ce1d020a54",
"assets/fonts/Nohemi-Light.ttf": "3295314e055fdc8efa7b9c614782bbbc",
"assets/fonts/Teko-Regular.ttf": "b35fa5f3177a8afc45d037059d2ec630",
"assets/fonts/Lack-Regular.otf": "1ba028ffeb5eab16ed8145563c82a37f",
"assets/fonts/Lack-Line-Regular.otf": "1a84b97eab92279044c351f4f4d6a6aa",
"assets/fonts/Apex-Mk3-Medium.otf": "434a6fa18ff7a6ae5e8d68ec91597e38",
"assets/fonts/Nohemi-Regular.ttf": "29ddb4605533a38e086b48fa105e0d12",
"assets/fonts/Apex-Mk3-ExtraLight.otf": "5825a4195cfe327d2e0b0dd4439631a8",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/AssetManifest.bin.json": "059ce8ad8507fae632561a1b97ac5216",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/NOTICES": "229daf75718b7bd9a3270fc6249a5685",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"manifest.json": "21038294cb442fc7e48982e147647509",
"version.json": "a1c3d8bebbf1c1f1fa059c3557e93bc3",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"index.html": "63ab59cf91f1d26530281d5c9d26d326",
"/": "63ab59cf91f1d26530281d5c9d26d326",
"flutter_bootstrap.js": "79d88f41545c982a6bd29e33d0c58615",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "223d1d9626530b01d1904672cdc378d1"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
