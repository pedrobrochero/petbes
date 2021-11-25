generate:
	flutter packages pub run build_runner build --delete-conflicting-outputs

watch:
	flutter packages pub run build_runner watch --delete-conflicting-outputs

autoFixDry:
	dart fix --dry-run

autoFix:
	dart fix --apply
	flutter packages pub run build_runner build --delete-conflicting-outputs

app-ios:
	flutter build ios --flavor prod

app-apk:
	flutter build apk --flavor prod

app-bundle:
	flutter build appbundle --flavor prod

