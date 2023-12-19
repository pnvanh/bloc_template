.PHONY: run_dev run_prod run_dev_release run_prod_release

run_dev:
	@echo "╠ Running development"
	@flutter run --flavor dev --target lib/main_dev.dart --dart-define=ENV_KEY=dev

run_dev_release:
	@echo "╠ Running development - relase mode"
	@flutter run --flavor dev --target lib/main_dev.dart --dart-define=ENV_KEY=dev --release

run_prod:
	@echo "╠ Running production"
	@flutter run --flavor prod --target lib/main_prod.dart --dart-define=ENV_KEY=prod

run_prod_release:
	@echo "╠ Running production - release mode"
	@flutter run --flavor prod --target lib/main_prod.dart --dart-define=ENV_KEY=prod

gen_l10n:
	@echo "╠ Generate l10n"
	@flutter pub run intl_utils:generate