function new-dart() {
	name=$(basename $(pwd))
	mkdir example
	mkdir lib
	echo "name: "$name > pubspec.yaml
	echo "library "$name";" > lib/$name.dart
	echo "import 'package:"$name/$name".dart';" > example/main.dart
	pub get
}