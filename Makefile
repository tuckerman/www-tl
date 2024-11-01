# Copyright Cameron Jay Tuckerman-Lee 2024. All rights reserved.

.PHONY: dev
dev:
	@python3 -m http.server 8000 --directory .

.PHONY: dev-public
dev-public: public
	@python3 -m http.server 8000 --directory public

.PHONY: public
public:
	@mkdir -p public
	@cp index.html public/index.html
	@mkdir -p public/thanksgiving
	@cp thanksgiving/index.html public/thanksgiving/index.html

.PHONY: clean
clean:
	@rm -rf public
