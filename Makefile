get-dependencies:
	flutter pub get

generate-code:
	flutter pub run build_runner build

build-android:
	flutter build appbundle

build-ios:
	flutter build ios \
	--no-codesign

app: get-dependencies generate-code
	flutter run

.PHONY: get-dependencies generate-code build-android build-ios app