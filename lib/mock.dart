import 'data/models/browser_link/browser_link.dart';

class AppMock {
  static const List<BrowserLink> linksList = [
    BrowserLink(
      title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      nativeBrowser: true,
      url: 'https://flutter.dev',
    ),
    BrowserLink(
      title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      nativeBrowser: false,
      url: 'https://flutter.dev',
    ),
    BrowserLink(
      title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      nativeBrowser: true,
      url: 'https://flutter.dev',
    ),
    BrowserLink(
      title:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisi nunc non, luctus fringilla tempus. Curabitur est.',
      nativeBrowser: false,
      url: 'https://flutter.dev',
    ),
    BrowserLink(
      title:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id vestibulum nisl auctor.',
      nativeBrowser: true,
      url: 'https://flutter.dev',
    ),
  ];
}
