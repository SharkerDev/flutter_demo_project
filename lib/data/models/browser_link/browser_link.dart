import 'package:freezed_annotation/freezed_annotation.dart';
part 'browser_link.freezed.dart';
part 'browser_link.g.dart';

@freezed
class BrowserLink with _$BrowserLink {
  const factory BrowserLink({
    required String title,
    required String url,
    @Default(false) bool nativeBrowser,
  }) = _BrowserLink;

  const BrowserLink._();

  @JsonSerializable(explicitToJson: true)
  factory BrowserLink.fromJson(Map<String, dynamic> json) =>
      _$BrowserLinkFromJson(json);
}
