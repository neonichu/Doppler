.PHONY: test

test:
	xctester Code/*.swift Tests/*.swift \
		Vendor/Decodable/Decodable/*.swift
