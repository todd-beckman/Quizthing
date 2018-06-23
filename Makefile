default: clean compile

clean:
	rm -rf index.html main.dart.js packages

compile:
	pub build
	cp build/web/
