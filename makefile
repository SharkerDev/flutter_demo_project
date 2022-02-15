### make -i setup
setup:
	flutter clean
	flutter pub get
	flutter packages pub run build_runner build --delete-conflicting-outputs


### make -i generate
generate:
	flutter packages pub run build_runner build --delete-conflicting-outputs